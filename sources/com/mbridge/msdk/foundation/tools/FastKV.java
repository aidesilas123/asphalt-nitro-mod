package com.mbridge.msdk.foundation.tools;

import android.os.Build;
import com.mbridge.msdk.foundation.tools.c;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class FastKV {
    static final int ASYNC_BLOCKING = 1;
    private static final String A_SUFFIX = ".kva";
    private static final int BASE_GC_BYTES_THRESHOLD = 4096;
    private static final int BASE_GC_KEYS_THRESHOLD = 80;
    private static final String BOTH_FILES_ERROR = "both files error";
    private static final String B_SUFFIX = ".kvb";
    private static final String C_SUFFIX = ".kvc";
    private static final int DATA_SIZE_LIMIT = 536870912;
    private static final int DATA_START = 12;
    private static final int DOUBLE_LIMIT;
    static final String GC_FINISH = "gc finish";
    private static final int INTERNAL_LIMIT = 2048;
    private static final String MAP_FAILED = "map failed";
    static final int NON_BLOCKING = 0;
    private static final String OPEN_FILE_FAILED = "open file failed";
    private static final int PAGE_SIZE;
    private static final String PARSE_DATA_FAILED = "parse dara failed";
    static final int SYNC_BLOCKING = 2;
    private static final String TEMP_SUFFIX = ".tmp";
    static final String TRUNCATE_FINISH = "truncate finish";
    private static final int TRUNCATE_THRESHOLD;
    private MappedByteBuffer aBuffer;
    private FileChannel aChannel;
    private MappedByteBuffer bBuffer;
    private FileChannel bChannel;
    private long checksum;
    private int dataEnd;
    private final Map<String, a> encoderMap;
    private m fastBuffer;
    private int invalidBytes;
    private final String name;
    private final String path;
    private int removeStart;
    private boolean sizeChanged;
    private String tempExternalName;
    private int updateSize;
    private int updateStart;
    private int writingMode;
    private static final int[] TYPE_SIZE = {0, 1, 4, 4, 8, 8};
    private static final byte[] EMPTY_ARRAY = new byte[0];
    private final b logger = n.a;
    private final Map<String, c.b> data = new HashMap();
    private final ArrayList<c> invalids = new ArrayList<>();
    private boolean autoCommit = true;
    private final Executor executor = new p();

    public static class Builder {
        private static final Map<String, FastKV> INSTANCE_MAP = new ConcurrentHashMap();
        private a[] encoders;
        private final String name;
        private final String path;
        private int writingMode = 0;

        public Builder(String str, String str2) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("path is empty");
            }
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            if (!str.endsWith("/")) {
                str = str + '/';
            }
            this.path = str;
            this.name = str2;
        }

        public Builder asyncBlocking() {
            this.writingMode = 1;
            return this;
        }

        public Builder blocking() {
            this.writingMode = 2;
            return this;
        }

        public FastKV build() {
            String str = this.path + this.name;
            Map<String, FastKV> map = INSTANCE_MAP;
            FastKV fastKV = map.get(str);
            if (fastKV == null) {
                synchronized (Builder.class) {
                    fastKV = map.get(str);
                    if (fastKV == null) {
                        fastKV = new FastKV(this.path, this.name, this.encoders, this.writingMode);
                        map.put(str, fastKV);
                    }
                }
            }
            return fastKV;
        }

        public Builder encoder(a[] aVarArr) {
            this.encoders = aVarArr;
            return this;
        }
    }

    public interface a<T> {
        T a(byte[] bArr, int i, int i2);

        String a();

        byte[] a(T t);
    }

    public interface b {
        void a(String str, Exception exc);

        void a(String str, String str2);

        void b(String str, Exception exc);
    }

    private static class c implements Comparable<c> {
        int a;
        int b;

        c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(c cVar) {
            return this.a - cVar.a;
        }
    }

    static {
        int iB = am.b();
        PAGE_SIZE = iB;
        int iMax = Math.max(iB << 1, 16384);
        DOUBLE_LIMIT = iMax;
        TRUNCATE_THRESHOLD = iMax << 1;
    }

    FastKV(String str, String str2, a[] aVarArr, int i) {
        this.path = str;
        this.name = str2;
        this.writingMode = i;
        HashMap map = new HashMap();
        map.put("StringSet", aj.a);
        if (aVarArr != null && aVarArr.length > 0) {
            for (a aVar : aVarArr) {
                String strA = aVar.a();
                if (map.containsKey(strA)) {
                    error("duplicate encoder tag:" + strA);
                } else {
                    map.put(strA, aVar);
                }
            }
        }
        this.encoderMap = map;
        loadData();
    }

    private void addObject(String str, Object obj, byte[] bArr, byte b2) {
        Object obj2;
        int length;
        int iSaveArray = saveArray(str, bArr, b2);
        if (iSaveArray != 0) {
            String str2 = this.tempExternalName;
            boolean z = str2 != null;
            if (z) {
                this.tempExternalName = null;
                obj2 = str2;
                length = 32;
            } else {
                obj2 = obj;
                length = bArr.length;
            }
            this.data.put(str, b2 == 6 ? new c.i(this.updateStart, iSaveArray, (String) obj2, length, z) : b2 == 7 ? new c.a(this.updateStart, iSaveArray, obj2, length, z) : new c.h(this.updateStart, iSaveArray, obj2, length, z));
            updateChange();
        }
    }

    private void addOrUpdate(String str, Object obj, byte[] bArr, c.j jVar, byte b2) {
        if (jVar == null) {
            addObject(str, obj, bArr, b2);
        } else if (jVar.f7222e || jVar.f7221d != bArr.length) {
            updateObject(str, obj, bArr, jVar);
        } else {
            updateBytes(jVar.a, bArr);
            jVar.b = obj;
        }
        checkIfCommit();
    }

    private int bytesThreshold() {
        int i = this.dataEnd;
        if (i <= 16384) {
            return 4096;
        }
        return i <= 65536 ? 8192 : 16384;
    }

    private void checkGC() {
        if (this.invalidBytes < (bytesThreshold() << 1)) {
            if (this.invalids.size() < (this.dataEnd < 16384 ? 80 : 160)) {
                return;
            }
        }
        gc(0);
    }

    private void checkIfCommit() {
        if (this.writingMode == 0 || !this.autoCommit) {
            return;
        }
        commitToCFile();
    }

    private void checkKey(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    private void checkKeySize(int i) {
        if (i > 255) {
            throw new IllegalArgumentException("key's length must less than 256");
        }
    }

    private void checkValueSize(int i, boolean z) {
        if (z) {
            if (i != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i < 0 || i >= 2048) {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private void clearData() {
        this.dataEnd = 12;
        this.checksum = 0L;
        clearInvalid();
        this.data.clear();
        m mVar = this.fastBuffer;
        if (mVar == null || mVar.a.length != PAGE_SIZE) {
            this.fastBuffer = new m(PAGE_SIZE);
        } else {
            mVar.a(0, 0);
            this.fastBuffer.a(4, 0L);
        }
    }

    private void clearInvalid() {
        this.invalidBytes = 0;
        this.invalids.clear();
    }

    private boolean commitToCFile() {
        int i = this.writingMode;
        if (i == 1) {
            this.executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.tools.FastKV.1
                @Override // java.lang.Runnable
                public final void run() {
                    FastKV.this.writeToCFile();
                }
            });
        } else if (i == 2) {
            return writeToCFile();
        }
        return true;
    }

    private void copyBuffer(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i) {
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                MappedByteBuffer map = (mappedByteBuffer2 == this.bBuffer ? this.bChannel : this.aChannel).map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.bBuffer) {
                    this.bBuffer = map;
                } else {
                    this.aBuffer = map;
                }
                mappedByteBuffer2 = map;
            } catch (IOException e2) {
                error(e2);
                toBlockingMode();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void countInvalid(int i, int i2) {
        this.invalidBytes += i2 - i;
        this.invalids.add(new c(i, i2));
    }

    private void deleteCFiles() {
        try {
            am.c(new File(this.path, this.name + C_SUFFIX));
            am.c(new File(this.path, this.name + TEMP_SUFFIX));
        } catch (Exception e2) {
            error(e2);
        }
    }

    private void ensureSize(int i) {
        int length = this.fastBuffer.a.length;
        int i2 = this.dataEnd + i;
        if (i2 >= length) {
            int i3 = this.invalidBytes;
            if (i3 > i && i3 > bytesThreshold()) {
                gc(i);
                return;
            }
            int newCapacity = getNewCapacity(length, i2);
            byte[] bArr = new byte[newCapacity];
            System.arraycopy(this.fastBuffer.a, 0, bArr, 0, this.dataEnd);
            this.fastBuffer.a = bArr;
            if (this.writingMode == 0) {
                try {
                    long j = newCapacity;
                    MappedByteBuffer map = this.aChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
                    this.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.bChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
                    this.bBuffer = map2;
                    map2.order(byteOrder);
                } catch (IOException e2) {
                    error(new Exception(MAP_FAILED, e2));
                    this.fastBuffer.a(0, this.dataEnd - 12);
                    this.fastBuffer.a(4, this.checksum);
                    toBlockingMode();
                }
            }
        }
    }

    private void error(Exception exc) {
        b bVar = this.logger;
        if (bVar != null) {
            bVar.b(this.name, exc);
        }
    }

    private void error(String str) {
        b bVar = this.logger;
        if (bVar != null) {
            bVar.b(this.name, new Exception(str));
        }
    }

    private void fastPutString(String str, String str2, c.i iVar) {
        int iB = m.b(str2);
        if (iVar == null) {
            int iB2 = m.b(str);
            checkKeySize(iB2);
            int i = iB2 + 4;
            this.updateSize = i + iB;
            preparePutBytes();
            this.fastBuffer.a((byte) 6);
            putKey(str, iB2);
            putStringValue(str2, iB);
            Map<String, c.b> map = this.data;
            int i2 = this.updateStart;
            map.put(str, new c.i(i2, i2 + i, str2, iB, false));
            updateChange();
        } else {
            int i3 = iVar.a;
            int i4 = i3 - iVar.c;
            int i5 = iVar.f7221d;
            boolean z = true;
            if (i5 == iB) {
                this.checksum = this.fastBuffer.b(i3, i5) ^ this.checksum;
                if (iB == str2.length()) {
                    str2.getBytes(0, iB, this.fastBuffer.a, iVar.a);
                } else {
                    m mVar = this.fastBuffer;
                    mVar.b = iVar.a;
                    mVar.a(str2);
                }
                this.updateStart = iVar.a;
                this.updateSize = iB;
                z = false;
            } else {
                this.updateSize = i4 + iB;
                preparePutBytes();
                this.fastBuffer.a((byte) 6);
                int i6 = i4 - 3;
                m mVar2 = this.fastBuffer;
                byte[] bArr = mVar2.a;
                System.arraycopy(bArr, iVar.c + 1, bArr, mVar2.b, i6);
                this.fastBuffer.b += i6;
                putStringValue(str2, iB);
                remove((byte) 6, iVar.c, iVar.a + iVar.f7221d);
                str = iVar.f7222e ? (String) iVar.b : null;
                iVar.f7222e = false;
                int i7 = this.updateStart;
                iVar.c = i7;
                iVar.a = i7 + i4;
                iVar.f7221d = iB;
            }
            iVar.b = str2;
            updateChange();
            if (z) {
                checkGC();
            }
            if (str != null) {
                am.c(new File(this.path + this.name, str));
            }
        }
        checkIfCommit();
    }

    private byte[] getArrayFromFile(c.a aVar) {
        try {
            byte[] bArrB = am.b(new File(this.path + this.name, (String) aVar.b));
            return bArrB != null ? bArrB : EMPTY_ARRAY;
        } catch (Exception e2) {
            error(e2);
            return EMPTY_ARRAY;
        }
    }

    private int getNewCapacity(int i, int i2) {
        if (i2 > 536870912) {
            throw new IllegalStateException("data size out of limit");
        }
        int i3 = PAGE_SIZE;
        if (i2 <= i3) {
            return i3;
        }
        while (i < i2) {
            int i4 = DOUBLE_LIMIT;
            i = i <= i4 ? i << 1 : i + i4;
        }
        return i;
    }

    private Object getObjectFromFile(c.h hVar) {
        try {
            byte[] bArrB = am.b(new File(this.path + this.name, (String) hVar.b));
            if (bArrB == null) {
                warning(new Exception("Read object data failed"));
                return null;
            }
            int i = bArrB[0] & 255;
            String str = Build.VERSION.SDK_INT >= 19 ? new String(bArrB, 1, i, StandardCharsets.UTF_8) : new String(bArrB, 1, i);
            a aVar = this.encoderMap.get(str);
            if (aVar != null) {
                int i2 = i + 1;
                return aVar.a(bArrB, i2, bArrB.length - i2);
            }
            warning(new Exception("No encoder for tag:" + str));
            return null;
        } catch (Exception e2) {
            error(e2);
            return null;
        }
    }

    private String getStringFromFile(c.i iVar) {
        try {
            byte[] bArrB = am.b(new File(this.path + this.name, (String) iVar.b));
            if (bArrB != null) {
                return Build.VERSION.SDK_INT >= 19 ? bArrB.length == 0 ? "" : new String(bArrB, StandardCharsets.UTF_8) : bArrB.length == 0 ? "" : new String(bArrB);
            }
        } catch (Exception e2) {
            error(e2);
        }
        return "";
    }

    private void info(String str) {
        b bVar = this.logger;
        if (bVar != null) {
            bVar.a(this.name, str);
        }
    }

    private boolean isABFileEqual() {
        m mVar = new m(this.dataEnd);
        this.bBuffer.rewind();
        this.bBuffer.get(mVar.a, 0, this.dataEnd);
        byte[] bArr = this.fastBuffer.a;
        byte[] bArr2 = mVar.a;
        for (int i = 0; i < this.dataEnd; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private synchronized void loadData() {
        long jNanoTime = System.nanoTime();
        if (!loadFromCFile() && this.writingMode == 0) {
            loadFromABFile();
        }
        if (this.fastBuffer == null) {
            this.fastBuffer = new m(PAGE_SIZE);
        }
        if (this.logger != null) {
            info("loading finish, data len:" + this.dataEnd + ", get keys:" + this.data.size() + ", use time:" + ((System.nanoTime() - jNanoTime) / 1000000) + " ms");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void loadFromABFile() {
        /*
            Method dump skipped, instruction units count: 445
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.FastKV.loadFromABFile():void");
    }

    private boolean loadFromCFile() {
        File file = new File(this.path, this.name + C_SUFFIX);
        File file2 = new File(this.path, this.name + TEMP_SUFFIX);
        boolean z = true;
        try {
            if (!file.exists()) {
                file = file2.exists() ? file2 : null;
            }
            if (file != null) {
                if (!loadWithBlockingIO(file)) {
                    clearData();
                    deleteCFiles();
                } else if (this.writingMode == 0) {
                    if (writeToABFile(this.fastBuffer)) {
                        info("recover from c file");
                        try {
                            deleteCFiles();
                            return true;
                        } catch (Exception e2) {
                            e = e2;
                            error(e);
                            return z;
                        }
                    }
                    this.writingMode = 1;
                }
            } else if (this.writingMode != 0) {
                File file3 = new File(this.path, this.name + A_SUFFIX);
                File file4 = new File(this.path, this.name + B_SUFFIX);
                if (file3.exists() && file4.exists()) {
                    tryBlockingIO(file3, file4);
                }
            }
            return false;
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
    }

    private boolean loadWithBlockingIO(File file) throws IOException {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i = (int) length;
            int newCapacity = getNewCapacity(PAGE_SIZE, i);
            m mVar = this.fastBuffer;
            if (mVar == null || mVar.a.length != newCapacity) {
                mVar = new m(new byte[newCapacity]);
                this.fastBuffer = mVar;
            } else {
                mVar.b = 0;
            }
            am.a(file, mVar.a, i);
            int iC = mVar.c();
            long jD = mVar.d();
            this.dataEnd = iC + 12;
            if (iC >= 0 && iC <= i - 12 && jD == mVar.b(12, iC) && parseData() == 0) {
                this.checksum = jD;
                return true;
            }
        }
        return false;
    }

    private void mergeInvalids() {
        int size = this.invalids.size() - 1;
        c cVar = this.invalids.get(size);
        while (size > 0) {
            size--;
            c cVar2 = this.invalids.get(size);
            if (cVar.a == cVar2.b) {
                cVar2.b = cVar.b;
                this.invalids.remove(size + 1);
            }
            cVar = cVar2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x017c, code lost:
    
        throw new java.lang.Exception(com.mbridge.msdk.foundation.tools.FastKV.PARSE_DATA_FAILED);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int parseData() {
        /*
            Method dump skipped, instruction units count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.FastKV.parseData():int");
    }

    private void preparePutBytes() {
        ensureSize(this.updateSize);
        int i = this.dataEnd;
        this.updateStart = i;
        this.dataEnd = this.updateSize + i;
        this.fastBuffer.b = i;
        this.sizeChanged = true;
    }

    private void putKey(String str, int i) {
        this.fastBuffer.a((byte) i);
        if (i != str.length()) {
            this.fastBuffer.a(str);
            return;
        }
        m mVar = this.fastBuffer;
        str.getBytes(0, i, mVar.a, mVar.b);
        this.fastBuffer.b += i;
    }

    private void putStringValue(String str, int i) {
        this.fastBuffer.a((short) i);
        if (i != str.length()) {
            this.fastBuffer.a(str);
        } else {
            m mVar = this.fastBuffer;
            str.getBytes(0, i, mVar.a, mVar.b);
        }
    }

    private void remove(byte b2, int i, int i2) {
        countInvalid(i, i2);
        byte b3 = (byte) (b2 | (-128));
        byte[] bArr = this.fastBuffer.a;
        this.checksum = ((((long) (bArr[i] ^ b3)) & 255) << ((i & 7) << 3)) ^ this.checksum;
        bArr[i] = b3;
        this.removeStart = i;
    }

    private void resetBuffer(MappedByteBuffer mappedByteBuffer) throws IOException {
        int iCapacity = mappedByteBuffer.capacity();
        int i = PAGE_SIZE;
        if (iCapacity != i) {
            FileChannel fileChannel = mappedByteBuffer == this.aBuffer ? this.aChannel : this.bChannel;
            fileChannel.truncate(i);
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, i);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.aBuffer) {
                this.aBuffer = map;
            } else {
                this.bBuffer = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void resetData() {
        if (this.writingMode == 0) {
            try {
                resetBuffer(this.aBuffer);
                resetBuffer(this.bBuffer);
            } catch (IOException unused) {
                toBlockingMode();
            }
        }
        clearData();
        am.c(new File(this.path + this.name));
    }

    private int saveArray(String str, byte[] bArr, byte b2) {
        this.tempExternalName = null;
        if (bArr.length < 2048) {
            return wrapArray(str, bArr, b2);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String strA = am.a();
        if (!am.a(new File(this.path + this.name, strA), bArr)) {
            error("save large value failed");
            return 0;
        }
        this.tempExternalName = strA;
        byte[] bArr2 = new byte[32];
        strA.getBytes(0, 32, bArr2, 0);
        return wrapArray(str, bArr2, (byte) (b2 | 64));
    }

    private long shiftCheckSum(long j, int i) {
        int i2 = (i & 7) << 3;
        return (j >>> (64 - i2)) | (j << i2);
    }

    private void syncABBuffer(MappedByteBuffer mappedByteBuffer) {
        if (this.sizeChanged && mappedByteBuffer != this.aBuffer) {
            mappedByteBuffer.putInt(0, this.dataEnd - 12);
        }
        mappedByteBuffer.putLong(4, this.checksum);
        int i = this.removeStart;
        if (i != 0) {
            mappedByteBuffer.put(i, this.fastBuffer.a[i]);
        }
        if (this.updateSize != 0) {
            mappedByteBuffer.position(this.updateStart);
            mappedByteBuffer.put(this.fastBuffer.a, this.updateStart, this.updateSize);
        }
    }

    private void toBlockingMode() {
        this.writingMode = 1;
        am.a(this.aChannel);
        am.a(this.bChannel);
        this.aChannel = null;
        this.bChannel = null;
        this.aBuffer = null;
        this.bBuffer = null;
    }

    private void truncate(int i) {
        int i2 = PAGE_SIZE;
        int newCapacity = getNewCapacity(i2, i + i2);
        byte[] bArr = this.fastBuffer.a;
        if (newCapacity >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[newCapacity];
        System.arraycopy(bArr, 0, bArr2, 0, this.dataEnd);
        this.fastBuffer.a = bArr2;
        if (this.writingMode == 0) {
            try {
                long j = newCapacity;
                this.aChannel.truncate(j);
                MappedByteBuffer map = this.aChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.bChannel.truncate(j);
                MappedByteBuffer map2 = this.bChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
                this.bBuffer = map2;
                map2.order(byteOrder);
            } catch (IOException e2) {
                error(new Exception(MAP_FAILED, e2));
                toBlockingMode();
            }
        }
        info(TRUNCATE_FINISH);
    }

    private void tryBlockingIO(File file, File file2) {
        try {
            if (loadWithBlockingIO(file)) {
                return;
            }
        } catch (IOException e2) {
            warning(e2);
        }
        clearData();
        try {
            if (loadWithBlockingIO(file2)) {
                return;
            }
        } catch (IOException e3) {
            warning(e3);
        }
        clearData();
    }

    private void updateBoolean(byte b2, int i) {
        long jShiftCheckSum = this.checksum ^ shiftCheckSum(1L, i);
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.put(i, b2);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.put(i, b2);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.a[i] = b2;
    }

    private void updateBytes(int i, byte[] bArr) {
        int length = bArr.length;
        this.checksum ^= this.fastBuffer.b(i, length);
        m mVar = this.fastBuffer;
        mVar.b = i;
        mVar.a(bArr);
        long jB = this.checksum ^ this.fastBuffer.b(i, length);
        this.checksum = jB;
        if (this.writingMode != 0) {
            this.fastBuffer.a(4, jB);
            return;
        }
        this.aBuffer.putInt(0, -1);
        this.aBuffer.putLong(4, this.checksum);
        this.aBuffer.position(i);
        this.aBuffer.put(bArr);
        this.aBuffer.putInt(0, this.dataEnd - 12);
        this.bBuffer.putLong(4, this.checksum);
        this.bBuffer.position(i);
        this.bBuffer.put(bArr);
    }

    private void updateChange() {
        this.checksum ^= this.fastBuffer.b(this.updateStart, this.updateSize);
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            syncABBuffer(this.aBuffer);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            syncABBuffer(this.bBuffer);
        } else {
            if (this.sizeChanged) {
                this.fastBuffer.a(0, this.dataEnd - 12);
            }
            this.fastBuffer.a(4, this.checksum);
        }
        this.sizeChanged = false;
        this.removeStart = 0;
        this.updateSize = 0;
    }

    private void updateInt32(int i, long j, int i2) {
        long jShiftCheckSum = shiftCheckSum(j, i2) ^ this.checksum;
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.putInt(i2, i);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putInt(i2, i);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.a(i2, i);
    }

    private void updateInt64(long j, long j2, int i) {
        long jShiftCheckSum = shiftCheckSum(j2, i) ^ this.checksum;
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.putLong(i, j);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putLong(i, j);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.a(i, j);
    }

    private void updateObject(String str, Object obj, byte[] bArr, c.j jVar) {
        int iSaveArray = saveArray(str, bArr, jVar.a());
        if (iSaveArray != 0) {
            String str2 = jVar.f7222e ? (String) jVar.b : null;
            remove(jVar.a(), jVar.c, jVar.a + jVar.f7221d);
            String str3 = this.tempExternalName;
            boolean z = str3 != null;
            jVar.c = this.updateStart;
            jVar.a = iSaveArray;
            jVar.f7222e = z;
            if (z) {
                jVar.b = str3;
                jVar.f7221d = 32;
                this.tempExternalName = null;
            } else {
                jVar.b = obj;
                jVar.f7221d = bArr.length;
            }
            updateChange();
            checkGC();
            if (str2 != null) {
                am.c(new File(this.path + this.name, str2));
            }
        }
    }

    private void updateOffset(int i, int[] iArr) {
        for (c.b bVar : this.data.values()) {
            int i2 = bVar.a;
            if (i2 > i) {
                int i3 = 0;
                int length = (iArr.length >> 1) - 1;
                while (true) {
                    if (i3 > length) {
                        break;
                    }
                    int i4 = (i3 + length) >>> 1;
                    int i5 = iArr[i4 << 1];
                    if (i5 >= i2) {
                        if (i5 <= i2) {
                            length = i4;
                            break;
                        }
                        length = i4 - 1;
                    } else {
                        i3 = i4 + 1;
                    }
                }
                int i6 = iArr[(length << 1) + 1];
                bVar.a -= i6;
                if (bVar.a() >= 6) {
                    ((c.j) bVar).c -= i6;
                }
            }
        }
    }

    private void warning(Exception exc) {
        b bVar = this.logger;
        if (bVar != null) {
            bVar.a(this.name, exc);
        }
    }

    private int wrapArray(String str, byte[] bArr, byte b2) {
        wrapHeader(str, b2, bArr.length + 2);
        this.fastBuffer.a((short) bArr.length);
        m mVar = this.fastBuffer;
        int i = mVar.b;
        mVar.a(bArr);
        return i;
    }

    private void wrapHeader(String str, byte b2) {
        wrapHeader(str, b2, TYPE_SIZE[b2]);
    }

    private void wrapHeader(String str, byte b2, int i) {
        int iB = m.b(str);
        checkKeySize(iB);
        this.updateSize = iB + 2 + i;
        preparePutBytes();
        this.fastBuffer.a(b2);
        putKey(str, iB);
    }

    private boolean writeToABFile(m mVar) {
        int length = mVar.a.length;
        File file = new File(this.path, this.name + A_SUFFIX);
        File file2 = new File(this.path, this.name + B_SUFFIX);
        try {
            if (!am.a(file) || !am.a(file2)) {
                throw new Exception(OPEN_FILE_FAILED);
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
            long j = length;
            randomAccessFile.setLength(j);
            randomAccessFile2.setLength(j);
            this.aChannel = randomAccessFile.getChannel();
            this.bChannel = randomAccessFile2.getChannel();
            MappedByteBuffer map = this.aChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
            this.aBuffer = map;
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            map.order(byteOrder);
            MappedByteBuffer map2 = this.bChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j);
            this.bBuffer = map2;
            map2.order(byteOrder);
            this.aBuffer.put(mVar.a, 0, this.dataEnd);
            this.bBuffer.put(mVar.a, 0, this.dataEnd);
            return true;
        } catch (Exception e2) {
            error(e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007b A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean writeToCFile() {
        /*
            r6 = this;
            monitor-enter(r6)
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r2 = r6.path     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r3.<init>()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = r6.name     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r3.append(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = ".tmp"
            r3.append(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            boolean r2 = com.mbridge.msdk.foundation.tools.am.a(r1)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r2 == 0) goto L7b
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r3 = "rw"
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            int r3 = r6.dataEnd     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r2.setLength(r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            com.mbridge.msdk.foundation.tools.m r3 = r6.fastBuffer     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            byte[] r3 = r3.a     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            int r4 = r6.dataEnd     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r2.write(r3, r0, r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r2.close()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r3 = r6.path     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r4.<init>()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r5 = r6.name     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r4.append(r5)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r5 = ".kvc"
            r4.append(r5)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 == 0) goto L61
            boolean r3 = r2.delete()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 == 0) goto L7b
        L61:
            boolean r1 = r1.renameTo(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r1 == 0) goto L6a
            r0 = 1
            monitor-exit(r6)
            return r0
        L6a:
            java.lang.Exception r1 = new java.lang.Exception     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r2 = "rename failed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r6.warning(r1)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            goto L7b
        L75:
            r0 = move-exception
            goto L7d
        L77:
            r1 = move-exception
            r6.error(r1)     // Catch: java.lang.Throwable -> L75
        L7b:
            monitor-exit(r6)
            return r0
        L7d:
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.FastKV.writeToCFile():boolean");
    }

    public synchronized void clear() {
        resetData();
        if (this.writingMode != 0) {
            deleteCFiles();
        }
    }

    public synchronized boolean commit() {
        this.autoCommit = true;
        return commitToCFile();
    }

    public synchronized boolean contains(String str) {
        return this.data.containsKey(str);
    }

    public synchronized void disableAutoCommit() {
        this.autoCommit = false;
    }

    public synchronized void force() {
        if (this.writingMode == 0) {
            this.aBuffer.force();
            this.bBuffer.force();
        }
    }

    void gc(int i) {
        Collections.sort(this.invalids);
        mergeInvalids();
        c cVar = this.invalids.get(0);
        int i2 = cVar.a;
        int i3 = this.dataEnd;
        int i4 = i3 - this.invalidBytes;
        int i5 = i4 - 12;
        int i6 = i4 - i2;
        int i7 = i3 - i2;
        boolean z = i5 < i7 + i6;
        if (!z) {
            this.checksum ^= this.fastBuffer.b(i2, i7);
        }
        int size = this.invalids.size();
        int i8 = size - 1;
        int i9 = this.dataEnd - this.invalids.get(i8).b;
        int[] iArr = new int[(i9 > 0 ? size : i8) << 1];
        int i10 = cVar.a;
        int i11 = cVar.b;
        for (int i12 = 1; i12 < size; i12++) {
            c cVar2 = this.invalids.get(i12);
            int i13 = cVar2.a - i11;
            byte[] bArr = this.fastBuffer.a;
            System.arraycopy(bArr, i11, bArr, i10, i13);
            int i14 = (i12 - 1) << 1;
            iArr[i14] = i11;
            iArr[i14 + 1] = i11 - i10;
            i10 += i13;
            i11 = cVar2.b;
        }
        if (i9 > 0) {
            byte[] bArr2 = this.fastBuffer.a;
            System.arraycopy(bArr2, i11, bArr2, i10, i9);
            int i15 = i8 << 1;
            iArr[i15] = i11;
            iArr[i15 + 1] = i11 - i10;
        }
        clearInvalid();
        if (z) {
            this.checksum = this.fastBuffer.b(12, i5);
        } else {
            this.checksum ^= this.fastBuffer.b(i2, i6);
        }
        this.dataEnd = i4;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i2);
            this.aBuffer.put(this.fastBuffer.a, i2, i6);
            this.aBuffer.putInt(0, i5);
            this.bBuffer.putInt(0, i5);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i2);
            this.bBuffer.put(this.fastBuffer.a, i2, i6);
        } else {
            this.fastBuffer.a(0, i5);
            this.fastBuffer.a(4, this.checksum);
        }
        updateOffset(i2, iArr);
        int i16 = i4 + i;
        if (this.fastBuffer.a.length - i16 > TRUNCATE_THRESHOLD) {
            truncate(i16);
        }
        info(GC_FINISH);
    }

    public synchronized Map<String, Object> getAll() {
        Object objValueOf;
        int size = this.data.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, c.b> entry : this.data.entrySet()) {
            String key = entry.getKey();
            c.b value = entry.getValue();
            Object obj = null;
            switch (value.a()) {
                case 1:
                    objValueOf = Boolean.valueOf(((c.C0410c) value).b);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((c.f) value).b);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((c.e) value).b);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((c.g) value).b);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((c.d) value).b);
                    break;
                case 6:
                    c.i iVar = (c.i) value;
                    objValueOf = iVar.f7222e ? getStringFromFile(iVar) : iVar.b;
                    break;
                case 7:
                    c.a aVar = (c.a) value;
                    objValueOf = aVar.f7222e ? getArrayFromFile(aVar) : aVar.b;
                    break;
                case 8:
                    c.h hVar = (c.h) value;
                    objValueOf = hVar.f7222e ? getObjectFromFile(hVar) : ((c.h) value).b;
                    break;
                default:
                    continue;
                    map.put(key, obj);
                    break;
            }
            obj = objValueOf;
            map.put(key, obj);
        }
        return map;
    }

    public byte[] getArray(String str) {
        return getArray(str, EMPTY_ARRAY);
    }

    public synchronized byte[] getArray(String str, byte[] bArr) {
        c.a aVar = (c.a) this.data.get(str);
        if (aVar != null) {
            return aVar.f7222e ? getArrayFromFile(aVar) : (byte[]) aVar.b;
        }
        return bArr;
    }

    public synchronized boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public synchronized boolean getBoolean(String str, boolean z) {
        c.C0410c c0410c = (c.C0410c) this.data.get(str);
        if (c0410c != null) {
            z = c0410c.b;
        }
        return z;
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public synchronized double getDouble(String str, double d2) {
        c.d dVar = (c.d) this.data.get(str);
        if (dVar != null) {
            d2 = dVar.b;
        }
        return d2;
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public synchronized float getFloat(String str, float f2) {
        c.e eVar = (c.e) this.data.get(str);
        if (eVar != null) {
            f2 = eVar.b;
        }
        return f2;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public synchronized int getInt(String str, int i) {
        c.f fVar = (c.f) this.data.get(str);
        if (fVar != null) {
            i = fVar.b;
        }
        return i;
    }

    public synchronized long getLong(String str) {
        c.g gVar;
        gVar = (c.g) this.data.get(str);
        return gVar == null ? 0L : gVar.b;
    }

    public synchronized long getLong(String str, long j) {
        c.g gVar = (c.g) this.data.get(str);
        if (gVar != null) {
            j = gVar.b;
        }
        return j;
    }

    public synchronized <T> T getObject(String str) {
        c.h hVar = (c.h) this.data.get(str);
        if (hVar != null) {
            return hVar.f7222e ? (T) getObjectFromFile(hVar) : (T) hVar.b;
        }
        return null;
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public synchronized String getString(String str, String str2) {
        c.i iVar = (c.i) this.data.get(str);
        if (iVar != null) {
            return iVar.f7222e ? getStringFromFile(iVar) : (String) iVar.b;
        }
        return str2;
    }

    public synchronized Set<String> getStringSet(String str) {
        return (Set) getObject(str);
    }

    public void putAll(Map<String, Object> map) {
        putAll(map, null);
    }

    public synchronized void putAll(Map<String, Object> map, Map<Class, a> map2) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && !key.isEmpty()) {
                if (value instanceof String) {
                    putString(key, (String) value);
                } else if (value instanceof Boolean) {
                    putBoolean(key, ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    putInt(key, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    putLong(key, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    putFloat(key, ((Float) value).floatValue());
                } else if (value instanceof Double) {
                    putDouble(key, ((Double) value).doubleValue());
                } else if (value instanceof Set) {
                    Set set = (Set) value;
                    if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                        putStringSet(key, (Set) value);
                    }
                } else if (value instanceof byte[]) {
                    putArray(key, (byte[]) value);
                } else if (map2 != null) {
                    a aVar = map2.get(value.getClass());
                    if (aVar != null) {
                        putObject(key, value, aVar);
                    } else {
                        warning(new Exception("missing encoder for type:" + value.getClass()));
                    }
                } else {
                    warning(new Exception("missing encoders"));
                }
            }
        }
    }

    public synchronized void putArray(String str, byte[] bArr) {
        checkKey(str);
        if (bArr == null) {
            remove(str);
        } else {
            addOrUpdate(str, bArr, bArr, (c.a) this.data.get(str), (byte) 7);
        }
    }

    public synchronized void putBoolean(String str, boolean z) {
        checkKey(str);
        c.C0410c c0410c = (c.C0410c) this.data.get(str);
        if (c0410c == null) {
            wrapHeader(str, (byte) 1);
            m mVar = this.fastBuffer;
            int i = mVar.b;
            mVar.a((byte) (z ? 1 : 0));
            updateChange();
            this.data.put(str, new c.C0410c(i, z));
            checkIfCommit();
        } else if (c0410c.b != z) {
            c0410c.b = z;
            updateBoolean((byte) (z ? 1 : 0), c0410c.a);
            checkIfCommit();
        }
    }

    public synchronized void putDouble(String str, double d2) {
        checkKey(str);
        c.d dVar = (c.d) this.data.get(str);
        if (dVar == null) {
            wrapHeader(str, (byte) 5);
            m mVar = this.fastBuffer;
            int i = mVar.b;
            mVar.a(Double.doubleToRawLongBits(d2));
            updateChange();
            this.data.put(str, new c.d(i, d2));
            checkIfCommit();
        } else if (dVar.b != d2) {
            long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
            long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(dVar.b) ^ jDoubleToRawLongBits;
            dVar.b = d2;
            updateInt64(jDoubleToRawLongBits, jDoubleToRawLongBits2, dVar.a);
            checkIfCommit();
        }
    }

    public synchronized void putFloat(String str, float f2) {
        checkKey(str);
        c.e eVar = (c.e) this.data.get(str);
        if (eVar == null) {
            wrapHeader(str, (byte) 3);
            m mVar = this.fastBuffer;
            int i = mVar.b;
            mVar.a(Float.floatToRawIntBits(f2));
            updateChange();
            this.data.put(str, new c.e(i, f2));
            checkIfCommit();
        } else if (eVar.b != f2) {
            int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
            long jFloatToRawIntBits = ((long) (Float.floatToRawIntBits(eVar.b) ^ iFloatToRawIntBits)) & 4294967295L;
            eVar.b = f2;
            updateInt32(iFloatToRawIntBits, jFloatToRawIntBits, eVar.a);
            checkIfCommit();
        }
    }

    public synchronized void putInt(String str, int i) {
        checkKey(str);
        c.f fVar = (c.f) this.data.get(str);
        if (fVar == null) {
            wrapHeader(str, (byte) 2);
            m mVar = this.fastBuffer;
            int i2 = mVar.b;
            mVar.a(i);
            updateChange();
            this.data.put(str, new c.f(i2, i));
            checkIfCommit();
        } else {
            int i3 = fVar.b;
            if (i3 != i) {
                fVar.b = i;
                updateInt32(i, ((long) (i3 ^ i)) & 4294967295L, fVar.a);
                checkIfCommit();
            }
        }
    }

    public synchronized void putLong(String str, long j) {
        checkKey(str);
        c.g gVar = (c.g) this.data.get(str);
        if (gVar == null) {
            wrapHeader(str, (byte) 4);
            m mVar = this.fastBuffer;
            int i = mVar.b;
            mVar.a(j);
            updateChange();
            this.data.put(str, new c.g(i, j));
            checkIfCommit();
        } else {
            long j2 = gVar.b;
            if (j2 != j) {
                gVar.b = j;
                updateInt64(j, j ^ j2, gVar.a);
                checkIfCommit();
            }
        }
    }

    public synchronized <T> void putObject(String str, T t, a<T> aVar) {
        checkKey(str);
        if (aVar == null) {
            throw new IllegalArgumentException("Encoder is null");
        }
        String strA = aVar.a();
        if (strA == null || strA.isEmpty() || strA.length() > 50) {
            throw new IllegalArgumentException("Invalid encoder tag:" + strA);
        }
        if (!this.encoderMap.containsKey(strA)) {
            throw new IllegalArgumentException("Encoder hasn't been registered");
        }
        if (t == null) {
            remove(str);
            return;
        }
        byte[] bArrA = null;
        try {
            bArrA = aVar.a(t);
        } catch (Exception e2) {
            error(e2);
        }
        if (bArrA == null) {
            remove(str);
            return;
        }
        int iB = m.b(strA);
        m mVar = new m(iB + 1 + bArrA.length);
        mVar.a((byte) iB);
        mVar.a(strA);
        mVar.a(bArrA);
        addOrUpdate(str, t, mVar.a, (c.h) this.data.get(str), (byte) 8);
    }

    public synchronized void putString(String str, String str2) {
        checkKey(str);
        if (str2 == null) {
            remove(str);
        } else {
            c.i iVar = (c.i) this.data.get(str);
            if (str2.length() * 3 < 2048) {
                fastPutString(str, str2, iVar);
            } else {
                addOrUpdate(str, str2, Build.VERSION.SDK_INT >= 19 ? str2.isEmpty() ? EMPTY_ARRAY : str2.getBytes(StandardCharsets.UTF_8) : str2.isEmpty() ? EMPTY_ARRAY : str2.getBytes(), iVar, (byte) 6);
            }
        }
    }

    public synchronized void putStringSet(String str, Set<String> set) {
        if (set == null) {
            remove(str);
        } else {
            putObject(str, set, aj.a);
        }
    }

    public synchronized void remove(String str) {
        c.b bVar = this.data.get(str);
        if (bVar != null) {
            this.data.remove(str);
            byte bA = bVar.a();
            String str2 = null;
            if (bA <= 5) {
                int iB = m.b(str);
                int i = bVar.a;
                remove(bA, i - (iB + 2), i + TYPE_SIZE[bA]);
            } else {
                c.j jVar = (c.j) bVar;
                remove(bA, jVar.c, jVar.a + jVar.f7221d);
                if (jVar.f7222e) {
                    str2 = (String) jVar.b;
                }
            }
            byte b2 = (byte) (bA | (-128));
            if (this.writingMode == 0) {
                this.aBuffer.putLong(4, this.checksum);
                this.aBuffer.put(this.removeStart, b2);
                this.bBuffer.putLong(4, this.checksum);
                this.bBuffer.put(this.removeStart, b2);
            } else {
                this.fastBuffer.a(4, this.checksum);
            }
            this.removeStart = 0;
            if (str2 != null) {
                am.c(new File(this.path + this.name, str2));
            }
            checkGC();
            checkIfCommit();
        }
    }

    public synchronized String toString() {
        return "FastKV: path:" + this.path + " name:" + this.name;
    }
}
