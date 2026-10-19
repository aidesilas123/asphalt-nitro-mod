package com.google.android.material.color;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ColorResourcesTableCreator.java */
/* JADX INFO: loaded from: classes3.dex */
final class b {
    private static byte a;
    private static final d b = new d(1, "android");
    private static final Comparator<C0229b> c = new a();

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    class a implements Comparator<C0229b> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C0229b c0229b, C0229b c0229b2) {
            return c0229b.c - c0229b2.c;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.color.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    static class C0229b {
        private final byte a;
        private final byte b;
        private final short c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f3219d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ColorInt
        private final int f3220e;

        C0229b(int i, String str, int i2) {
            this.f3219d = str;
            this.f3220e = i2;
            this.c = (short) (65535 & i);
            this.b = (byte) ((i >> 16) & 255);
            this.a = (byte) ((i >> 24) & 255);
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class c {
        private final e a;
        private final d b;
        private final h c = new h(false, "?1", "?2", "?3", "?4", "?5", "color");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f3221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k f3222e;

        c(d dVar, List<C0229b> list) {
            this.b = dVar;
            String[] strArr = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                strArr[i] = list.get(i).f3219d;
            }
            this.f3221d = new h(true, strArr);
            this.f3222e = new k(list);
            this.a = new e((short) 512, (short) 288, a());
        }

        int a() {
            return this.c.a() + 288 + this.f3221d.a() + this.f3222e.b();
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(b.j(this.b.a));
            char[] charArray = this.b.b.toCharArray();
            for (int i = 0; i < 128; i++) {
                if (i < charArray.length) {
                    byteArrayOutputStream.write(b.h(charArray[i]));
                } else {
                    byteArrayOutputStream.write(b.h((char) 0));
                }
            }
            byteArrayOutputStream.write(b.j(288));
            byteArrayOutputStream.write(b.j(0));
            byteArrayOutputStream.write(b.j(this.c.a() + 288));
            byteArrayOutputStream.write(b.j(0));
            byteArrayOutputStream.write(b.j(0));
            this.c.c(byteArrayOutputStream);
            this.f3221d.c(byteArrayOutputStream);
            this.f3222e.c(byteArrayOutputStream);
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    static class d {
        private final int a;
        private final String b;

        d(int i, String str) {
            this.a = i;
            this.b = str;
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class e {
        private final short a;
        private final short b;
        private final int c;

        e(short s, short s2, int i) {
            this.a = s;
            this.b = s2;
            this.c = i;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(b.k(this.a));
            byteArrayOutputStream.write(b.k(this.b));
            byteArrayOutputStream.write(b.j(this.c));
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class f {
        private final int a;
        private final int b;

        f(int i, @ColorInt int i2) {
            this.a = i;
            this.b = i2;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(b.k((short) 8));
            byteArrayOutputStream.write(b.k((short) 2));
            byteArrayOutputStream.write(b.j(this.a));
            byteArrayOutputStream.write(b.k((short) 8));
            byteArrayOutputStream.write(new byte[]{0, Ascii.FS});
            byteArrayOutputStream.write(b.j(this.b));
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class g {
        private final e a;
        private final int b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<c> f3223d = new ArrayList();
        private final h c = new h(new String[0]);

        g(Map<d, List<C0229b>> map) {
            this.b = map.size();
            for (Map.Entry<d, List<C0229b>> entry : map.entrySet()) {
                List<C0229b> value = entry.getValue();
                Collections.sort(value, b.c);
                this.f3223d.add(new c(entry.getKey(), value));
            }
            this.a = new e((short) 2, (short) 12, a());
        }

        private int a() {
            Iterator<c> it = this.f3223d.iterator();
            int iA = 0;
            while (it.hasNext()) {
                iA += it.next().a();
            }
            return this.c.a() + 12 + iA;
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(b.j(this.b));
            this.c.c(byteArrayOutputStream);
            Iterator<c> it = this.f3223d.iterator();
            while (it.hasNext()) {
                it.next().b(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class h {
        private final e a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f3225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<Integer> f3226f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final List<Integer> f3227g;
        private final List<byte[]> h;
        private final List<List<i>> i;
        private final boolean j;
        private final int k;
        private final int l;

        h(boolean z, String... strArr) {
            this.f3226f = new ArrayList();
            this.f3227g = new ArrayList();
            this.h = new ArrayList();
            this.i = new ArrayList();
            this.j = z;
            int length = 0;
            for (String str : strArr) {
                Pair<byte[], List<i>> pairB = b(str);
                this.f3226f.add(Integer.valueOf(length));
                Object obj = pairB.first;
                length += ((byte[]) obj).length;
                this.h.add((byte[]) obj);
                this.i.add((List<i>) pairB.second);
            }
            int size = 0;
            for (List<i> list : this.i) {
                for (i iVar : list) {
                    this.f3226f.add(Integer.valueOf(length));
                    length += iVar.a.length;
                    this.h.add(iVar.a);
                }
                this.f3227g.add(Integer.valueOf(size));
                size += (list.size() * 12) + 4;
            }
            int i = length % 4;
            int i2 = i == 0 ? 0 : 4 - i;
            this.k = i2;
            int size2 = this.h.size();
            this.b = size2;
            this.c = this.h.size() - strArr.length;
            boolean z2 = this.h.size() - strArr.length > 0;
            if (!z2) {
                this.f3227g.clear();
                this.i.clear();
            }
            int size3 = (size2 * 4) + 28 + (this.f3227g.size() * 4);
            this.f3224d = size3;
            int i3 = length + i2;
            this.f3225e = z2 ? size3 + i3 : 0;
            int i4 = size3 + i3 + (z2 ? size : 0);
            this.l = i4;
            this.a = new e((short) 1, (short) 28, i4);
        }

        h(String... strArr) {
            this(false, strArr);
        }

        private Pair<byte[], List<i>> b(String str) {
            return new Pair<>(this.j ? b.m(str) : b.l(str), Collections.emptyList());
        }

        int a() {
            return this.l;
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(b.j(this.b));
            byteArrayOutputStream.write(b.j(this.c));
            byteArrayOutputStream.write(b.j(this.j ? 256 : 0));
            byteArrayOutputStream.write(b.j(this.f3224d));
            byteArrayOutputStream.write(b.j(this.f3225e));
            Iterator<Integer> it = this.f3226f.iterator();
            while (it.hasNext()) {
                byteArrayOutputStream.write(b.j(it.next().intValue()));
            }
            Iterator<Integer> it2 = this.f3227g.iterator();
            while (it2.hasNext()) {
                byteArrayOutputStream.write(b.j(it2.next().intValue()));
            }
            Iterator<byte[]> it3 = this.h.iterator();
            while (it3.hasNext()) {
                byteArrayOutputStream.write(it3.next());
            }
            int i = this.k;
            if (i > 0) {
                byteArrayOutputStream.write(new byte[i]);
            }
            Iterator<List<i>> it4 = this.i.iterator();
            while (it4.hasNext()) {
                Iterator<i> it5 = it4.next().iterator();
                while (it5.hasNext()) {
                    it5.next().b(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(b.j(-1));
            }
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class i {
        private byte[] a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3228d;

        private i() {
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(b.j(this.b));
            byteArrayOutputStream.write(b.j(this.c));
            byteArrayOutputStream.write(b.j(this.f3228d));
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class j {
        private final e a;
        private final int b;
        private final byte[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f3229d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final f[] f3230e;

        j(List<C0229b> list, Set<Short> set, int i) {
            byte[] bArr = new byte[64];
            this.c = bArr;
            this.b = i;
            bArr[0] = 64;
            this.f3230e = new f[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3230e[i2] = new f(i2, list.get(i2).f3220e);
            }
            this.f3229d = new int[i];
            int i3 = 0;
            for (short s = 0; s < i; s = (short) (s + 1)) {
                if (set.contains(Short.valueOf(s))) {
                    this.f3229d[s] = i3;
                    i3 += 16;
                } else {
                    this.f3229d[s] = -1;
                }
            }
            this.a = new e((short) 513, (short) 84, a());
        }

        private int b() {
            return c() + 84;
        }

        private int c() {
            return this.f3229d.length * 4;
        }

        int a() {
            return b() + (this.f3230e.length * 16);
        }

        void d(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{b.a, 0, 0, 0});
            byteArrayOutputStream.write(b.j(this.b));
            byteArrayOutputStream.write(b.j(b()));
            byteArrayOutputStream.write(this.c);
            for (int i : this.f3229d) {
                byteArrayOutputStream.write(b.j(i));
            }
            for (f fVar : this.f3230e) {
                fVar.a(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: compiled from: ColorResourcesTableCreator.java */
    private static class k {
        private final e a;
        private final int b;
        private final int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final j f3231d;

        k(List<C0229b> list) {
            this.b = list.get(list.size() - 1).c + 1;
            HashSet hashSet = new HashSet();
            Iterator<C0229b> it = list.iterator();
            while (it.hasNext()) {
                hashSet.add(Short.valueOf(it.next().c));
            }
            this.c = new int[this.b];
            for (short s = 0; s < this.b; s = (short) (s + 1)) {
                if (hashSet.contains(Short.valueOf(s))) {
                    this.c[s] = 1073741824;
                }
            }
            this.a = new e((short) 514, (short) 16, a());
            this.f3231d = new j(list, hashSet, this.b);
        }

        private int a() {
            return (this.b * 4) + 16;
        }

        int b() {
            return a() + this.f3231d.a();
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{b.a, 0, 0, 0});
            byteArrayOutputStream.write(b.j(this.b));
            for (int i : this.c) {
                byteArrayOutputStream.write(b.j(i));
            }
            this.f3231d.d(byteArrayOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] h(char c2) {
        return new byte[]{(byte) (c2 & 255), (byte) ((c2 >> '\b') & 255)};
    }

    static byte[] i(Context context, Map<Integer, Integer> map) throws IOException {
        d dVar;
        if (map.entrySet().isEmpty()) {
            throw new IllegalArgumentException("No color resources provided for harmonization.");
        }
        d dVar2 = new d(127, context.getPackageName());
        HashMap map2 = new HashMap();
        C0229b c0229b = null;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            C0229b c0229b2 = new C0229b(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
            if (!context.getResources().getResourceTypeName(entry.getKey().intValue()).equals("color")) {
                throw new IllegalArgumentException("Non color resource found: name=" + c0229b2.f3219d + ", typeId=" + Integer.toHexString(c0229b2.b & 255));
            }
            if (c0229b2.a == 1) {
                dVar = b;
            } else {
                if (c0229b2.a != 127) {
                    throw new IllegalArgumentException("Not supported with unknown package id: " + ((int) c0229b2.a));
                }
                dVar = dVar2;
            }
            if (!map2.containsKey(dVar)) {
                map2.put(dVar, new ArrayList());
            }
            ((List) map2.get(dVar)).add(c0229b2);
            c0229b = c0229b2;
        }
        byte b2 = c0229b.b;
        a = b2;
        if (b2 == 0) {
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new g(map2).b(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] j(int i2) {
        return new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] k(short s) {
        return new byte[]{(byte) (s & 255), (byte) ((s >> 8) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] l(String str) {
        char[] charArray = str.toCharArray();
        int length = (charArray.length * 2) + 4;
        byte[] bArr = new byte[length];
        byte[] bArrK = k((short) charArray.length);
        bArr[0] = bArrK[0];
        bArr[1] = bArrK[1];
        for (int i2 = 0; i2 < charArray.length; i2++) {
            byte[] bArrH = h(charArray[i2]);
            int i3 = i2 * 2;
            bArr[i3 + 2] = bArrH[0];
            bArr[i3 + 3] = bArrH[1];
        }
        bArr[length - 2] = 0;
        bArr[length - 1] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] m(String str) {
        byte[] bytes = str.getBytes(Charset.forName(C.UTF8_NAME));
        byte length = (byte) bytes.length;
        int length2 = bytes.length + 3;
        byte[] bArr = new byte[length2];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 - 1] = 0;
        return bArr;
    }
}
