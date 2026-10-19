package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import android.util.Log;
import android.util.SparseArray;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a;
import com.fyber.inneractive.sdk.player.exoplayer2.util.o;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContentIndex;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public final HashMap<String, h> a;
    public final SparseArray<String> b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Cipher f2556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SecretKeySpec f2557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o f2559g;

    public i(File file, byte[] bArr) {
        if (bArr != null) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(bArr.length == 16);
            try {
                this.f2556d = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                this.f2557e = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
                throw new IllegalStateException(e2);
            }
        } else {
            this.f2556d = null;
            this.f2557e = null;
        }
        this.a = new HashMap<>();
        this.b = new SparseArray<>();
        this.c = new com.fyber.inneractive.sdk.player.exoplayer2.util.b(new File(file, CachedContentIndex.FILE_NAME));
    }

    public h a(String str) {
        return this.a.get(str);
    }

    public final h a(String str, long j) {
        SparseArray<String> sparseArray = this.b;
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            iKeyAt = i;
        }
        h hVar = new h(iKeyAt, str, j);
        this.a.put(str, hVar);
        this.b.put(iKeyAt, str);
        this.f2558f = true;
        return hVar;
    }

    public final void a(h hVar) {
        this.a.put(hVar.b, hVar);
        this.b.put(hVar.a, hVar.b);
    }

    public final boolean a() throws Throwable {
        DataInputStream dataInputStream;
        BufferedInputStream bufferedInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(this.c.a());
                dataInputStream = new DataInputStream(bufferedInputStream);
            } catch (Throwable th) {
                th = th;
                dataInputStream = null;
            }
        } catch (FileNotFoundException unused) {
            dataInputStream = dataInputStream2;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            if (dataInputStream.readInt() != 1) {
                u.a(dataInputStream);
                return false;
            }
            if ((dataInputStream.readInt() & 1) == 0) {
                if (this.f2556d != null) {
                    this.f2558f = true;
                }
                dataInputStream2 = dataInputStream;
            } else {
                if (this.f2556d == null) {
                    u.a(dataInputStream);
                    return false;
                }
                byte[] bArr = new byte[16];
                dataInputStream.readFully(bArr);
                try {
                    this.f2556d.init(2, this.f2557e, new IvParameterSpec(bArr));
                    dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f2556d));
                } catch (InvalidAlgorithmParameterException e3) {
                    e = e3;
                    throw new IllegalStateException(e);
                } catch (InvalidKeyException e4) {
                    e = e4;
                    throw new IllegalStateException(e);
                }
            }
            int i = dataInputStream2.readInt();
            int iA = 0;
            for (int i2 = 0; i2 < i; i2++) {
                h hVar = new h(dataInputStream2.readInt(), dataInputStream2.readUTF(), dataInputStream2.readLong());
                a(hVar);
                iA += hVar.a();
            }
            if (dataInputStream2.readInt() != iA) {
                u.a(dataInputStream2);
                return false;
            }
            u.a(dataInputStream2);
            return true;
        } catch (FileNotFoundException unused2) {
        } catch (IOException e5) {
            e = e5;
            dataInputStream2 = dataInputStream;
            Log.e("CachedContentIndex", "Error reading cache content index file.", e);
            if (dataInputStream2 != null) {
                u.a(dataInputStream2);
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (dataInputStream != null) {
                u.a(dataInputStream);
            }
            throw th;
        }
        if (dataInputStream != null) {
            u.a(dataInputStream);
        }
        return false;
    }

    public void b() {
        LinkedList linkedList = new LinkedList();
        for (h hVar : this.a.values()) {
            if (hVar.c.isEmpty()) {
                linkedList.add(hVar.b);
            }
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            b((String) it.next());
        }
    }

    public void b(String str) {
        h hVarRemove = this.a.remove(str);
        if (hVarRemove != null) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(hVarRemove.c.isEmpty());
            this.b.remove(hVarRemove.a);
            this.f2558f = true;
        }
    }

    public void c() throws Throwable {
        DataOutputStream dataOutputStream;
        IOException e2;
        Throwable th;
        if (!this.f2558f) {
            return;
        }
        DataOutputStream dataOutputStream2 = null;
        try {
            OutputStream outputStreamB = this.c.b();
            o oVar = this.f2559g;
            if (oVar == null) {
                this.f2559g = new o(outputStreamB);
            } else {
                oVar.a(outputStreamB);
            }
            dataOutputStream = new DataOutputStream(this.f2559g);
            try {
                dataOutputStream.writeInt(1);
                dataOutputStream.writeInt(this.f2556d != null ? 1 : 0);
                if (this.f2556d != null) {
                    byte[] bArr = new byte[16];
                    new Random().nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.f2556d.init(1, this.f2557e, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream2 = new DataOutputStream(new CipherOutputStream(this.f2559g, this.f2556d));
                    } catch (InvalidAlgorithmParameterException e3) {
                        e = e3;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e4) {
                        e = e4;
                        throw new IllegalStateException(e);
                    }
                } else {
                    dataOutputStream2 = dataOutputStream;
                }
                dataOutputStream2.writeInt(this.a.size());
                int iA = 0;
                for (h hVar : this.a.values()) {
                    dataOutputStream2.writeInt(hVar.a);
                    dataOutputStream2.writeUTF(hVar.b);
                    dataOutputStream2.writeLong(hVar.f2555d);
                    iA += hVar.a();
                }
                dataOutputStream2.writeInt(iA);
                com.fyber.inneractive.sdk.player.exoplayer2.util.b bVar = this.c;
                bVar.getClass();
                dataOutputStream2.close();
                bVar.b.delete();
                int i = u.a;
                this.f2558f = false;
            } catch (IOException e5) {
                e2 = e5;
                try {
                    throw new a.C0191a(e2);
                } catch (Throwable th2) {
                    DataOutputStream dataOutputStream3 = dataOutputStream;
                    th = th2;
                    dataOutputStream2 = dataOutputStream3;
                    Throwable th3 = th;
                    dataOutputStream = dataOutputStream2;
                    th = th3;
                    u.a(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                u.a(dataOutputStream);
                throw th;
            }
        } catch (IOException e6) {
            dataOutputStream = dataOutputStream2;
            e2 = e6;
        } catch (Throwable th5) {
            th = th5;
            Throwable th32 = th;
            dataOutputStream = dataOutputStream2;
            th = th32;
            u.a(dataOutputStream);
            throw th;
        }
    }
}
