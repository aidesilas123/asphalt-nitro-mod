package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgwi;
import com.google.android.gms.internal.ads.zzgwm;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgwm<MessageType extends zzgwm<MessageType, BuilderType>, BuilderType extends zzgwi<MessageType, BuilderType>> extends zzgun<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzgzh zzc = zzgzh.zzc();

    private final int zza(zzgyp zzgypVar) {
        return zzgye.zza().zzb(getClass()).zza(this);
    }

    static zzgwm zzaC(Class cls) {
        Map map = zzb;
        zzgwm zzgwmVar = (zzgwm) map.get(cls);
        if (zzgwmVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgwmVar = (zzgwm) map.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (zzgwmVar == null) {
            zzgwmVar = (zzgwm) ((zzgwm) zzgzq.zzg(cls)).zzb(6, null, null);
            if (zzgwmVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzgwmVar);
        }
        return zzgwmVar;
    }

    protected static zzgwm zzaE(zzgwm zzgwmVar, zzgve zzgveVar) throws zzgwy {
        zzgvy zzgvyVar = zzgvy.zza;
        zzgvm zzgvmVarZzl = zzgveVar.zzl();
        zzgwm zzgwmVarZzaD = zzgwmVar.zzaD();
        try {
            zzgyp zzgypVarZzb = zzgye.zza().zzb(zzgwmVarZzaD.getClass());
            zzgypVarZzb.zzh(zzgwmVarZzaD, zzgvn.zzq(zzgvmVarZzl), zzgvyVar);
            zzgypVarZzb.zzf(zzgwmVarZzaD);
            try {
                zzgvmVarZzl.zzz(0);
                zzc(zzgwmVarZzaD);
                zzc(zzgwmVarZzaD);
                return zzgwmVarZzaD;
            } catch (zzgwy e2) {
                e2.zzh(zzgwmVarZzaD);
                throw e2;
            }
        } catch (zzgwy e3) {
            e = e3;
            if (e.zzl()) {
                e = new zzgwy(e);
            }
            e.zzh(zzgwmVarZzaD);
            throw e;
        } catch (zzgzf e4) {
            zzgwy zzgwyVarZza = e4.zza();
            zzgwyVarZza.zzh(zzgwmVarZzaD);
            throw zzgwyVarZza;
        } catch (IOException e5) {
            if (e5.getCause() instanceof zzgwy) {
                throw ((zzgwy) e5.getCause());
            }
            zzgwy zzgwyVar = new zzgwy(e5);
            zzgwyVar.zzh(zzgwmVarZzaD);
            throw zzgwyVar;
        } catch (RuntimeException e6) {
            if (e6.getCause() instanceof zzgwy) {
                throw ((zzgwy) e6.getCause());
            }
            throw e6;
        }
    }

    protected static zzgwm zzaF(zzgwm zzgwmVar, byte[] bArr) throws zzgwy {
        zzgwm zzgwmVarZzd = zzd(zzgwmVar, bArr, 0, bArr.length, zzgvy.zza);
        zzc(zzgwmVarZzd);
        return zzgwmVarZzd;
    }

    protected static zzgwm zzaG(zzgwm zzgwmVar, zzgve zzgveVar, zzgvy zzgvyVar) throws zzgwy {
        zzgvm zzgvmVarZzl = zzgveVar.zzl();
        zzgwm zzgwmVarZzaD = zzgwmVar.zzaD();
        try {
            zzgyp zzgypVarZzb = zzgye.zza().zzb(zzgwmVarZzaD.getClass());
            zzgypVarZzb.zzh(zzgwmVarZzaD, zzgvn.zzq(zzgvmVarZzl), zzgvyVar);
            zzgypVarZzb.zzf(zzgwmVarZzaD);
            try {
                zzgvmVarZzl.zzz(0);
                zzc(zzgwmVarZzaD);
                return zzgwmVarZzaD;
            } catch (zzgwy e2) {
                e2.zzh(zzgwmVarZzaD);
                throw e2;
            }
        } catch (zzgwy e3) {
            e = e3;
            if (e.zzl()) {
                e = new zzgwy(e);
            }
            e.zzh(zzgwmVarZzaD);
            throw e;
        } catch (zzgzf e4) {
            zzgwy zzgwyVarZza = e4.zza();
            zzgwyVarZza.zzh(zzgwmVarZzaD);
            throw zzgwyVarZza;
        } catch (IOException e5) {
            if (e5.getCause() instanceof zzgwy) {
                throw ((zzgwy) e5.getCause());
            }
            zzgwy zzgwyVar = new zzgwy(e5);
            zzgwyVar.zzh(zzgwmVarZzaD);
            throw zzgwyVar;
        } catch (RuntimeException e6) {
            if (e6.getCause() instanceof zzgwy) {
                throw ((zzgwy) e6.getCause());
            }
            throw e6;
        }
    }

    protected static zzgwm zzaH(zzgwm zzgwmVar, InputStream inputStream, zzgvy zzgvyVar) throws zzgwy {
        zzgvm zzgvmVarZzH = zzgvm.zzH(inputStream, 4096);
        zzgwm zzgwmVarZzaD = zzgwmVar.zzaD();
        try {
            zzgyp zzgypVarZzb = zzgye.zza().zzb(zzgwmVarZzaD.getClass());
            zzgypVarZzb.zzh(zzgwmVarZzaD, zzgvn.zzq(zzgvmVarZzH), zzgvyVar);
            zzgypVarZzb.zzf(zzgwmVarZzaD);
            zzc(zzgwmVarZzaD);
            return zzgwmVarZzaD;
        } catch (zzgwy e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzgwy(e);
            }
            e.zzh(zzgwmVarZzaD);
            throw e;
        } catch (zzgzf e3) {
            zzgwy zzgwyVarZza = e3.zza();
            zzgwyVarZza.zzh(zzgwmVarZzaD);
            throw zzgwyVarZza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgwy) {
                throw ((zzgwy) e4.getCause());
            }
            zzgwy zzgwyVar = new zzgwy(e4);
            zzgwyVar.zzh(zzgwmVarZzaD);
            throw zzgwyVar;
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzgwy) {
                throw ((zzgwy) e5.getCause());
            }
            throw e5;
        }
    }

    protected static zzgwm zzaI(zzgwm zzgwmVar, byte[] bArr, zzgvy zzgvyVar) throws zzgwy {
        zzgwm zzgwmVarZzd = zzd(zzgwmVar, bArr, 0, bArr.length, zzgvyVar);
        zzc(zzgwmVarZzd);
        return zzgwmVarZzd;
    }

    protected static zzgwr zzaJ() {
        return zzgwn.zzf();
    }

    protected static zzgwr zzaK(zzgwr zzgwrVar) {
        int size = zzgwrVar.size();
        return zzgwrVar.zzd(size == 0 ? 10 : size + size);
    }

    protected static zzgwu zzaL() {
        return zzgxl.zzf();
    }

    protected static zzgwu zzaM(zzgwu zzgwuVar) {
        int size = zzgwuVar.size();
        return zzgwuVar.zzd(size == 0 ? 10 : size + size);
    }

    protected static zzgwv zzaN() {
        return zzgyf.zze();
    }

    protected static zzgwv zzaO(zzgwv zzgwvVar) {
        int size = zzgwvVar.size();
        return zzgwvVar.zzd(size == 0 ? 10 : size + size);
    }

    static Object zzaQ(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object zzaR(zzgxw zzgxwVar, String str, Object[] objArr) {
        return new zzgyg(zzgxwVar, str, objArr);
    }

    protected static void zzaU(Class cls, zzgwm zzgwmVar) {
        zzgwmVar.zzaT();
        zzb.put(cls, zzgwmVar);
    }

    private static zzgwm zzc(zzgwm zzgwmVar) throws zzgwy {
        if (zzgwmVar == null || zzgwmVar.zzaX()) {
            return zzgwmVar;
        }
        zzgwy zzgwyVarZza = new zzgzf(zzgwmVar).zza();
        zzgwyVarZza.zzh(zzgwmVar);
        throw zzgwyVarZza;
    }

    private static zzgwm zzd(zzgwm zzgwmVar, byte[] bArr, int i, int i2, zzgvy zzgvyVar) throws zzgwy {
        zzgwm zzgwmVarZzaD = zzgwmVar.zzaD();
        try {
            zzgyp zzgypVarZzb = zzgye.zza().zzb(zzgwmVarZzaD.getClass());
            zzgypVarZzb.zzi(zzgwmVarZzaD, bArr, 0, i2, new zzguq(zzgvyVar));
            zzgypVarZzb.zzf(zzgwmVarZzaD);
            return zzgwmVarZzaD;
        } catch (zzgwy e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzgwy(e);
            }
            e.zzh(zzgwmVarZzaD);
            throw e;
        } catch (zzgzf e3) {
            zzgwy zzgwyVarZza = e3.zza();
            zzgwyVarZza.zzh(zzgwmVarZzaD);
            throw zzgwyVarZza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgwy) {
                throw ((zzgwy) e4.getCause());
            }
            zzgwy zzgwyVar = new zzgwy(e4);
            zzgwyVar.zzh(zzgwmVarZzaD);
            throw zzgwyVar;
        } catch (IndexOutOfBoundsException unused) {
            zzgwy zzgwyVarZzj = zzgwy.zzj();
            zzgwyVarZzj.zzh(zzgwmVarZzaD);
            throw zzgwyVarZzj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgye.zza().zzb(getClass()).zzj(this, (zzgwm) obj);
    }

    public final int hashCode() {
        if (zzaY()) {
            return zzay();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzay = zzay();
        this.zza = iZzay;
        return iZzay;
    }

    public final String toString() {
        return zzgxy.zza(this, super.toString());
    }

    protected final zzgwi zzaA() {
        return (zzgwi) zzb(5, null, null);
    }

    public final zzgwi zzaB() {
        zzgwi zzgwiVar = (zzgwi) zzb(5, null, null);
        zzgwiVar.zzaj(this);
        return zzgwiVar;
    }

    final zzgwm zzaD() {
        return (zzgwm) zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxw
    public final /* synthetic */ zzgxv zzaP() {
        return (zzgwi) zzb(5, null, null);
    }

    protected final void zzaS() {
        zzgye.zza().zzb(getClass()).zzf(this);
        zzaT();
    }

    final void zzaT() {
        this.zzd &= Integer.MAX_VALUE;
    }

    final void zzaV(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzgxw
    public final void zzaW(zzgvt zzgvtVar) throws IOException {
        zzgye.zza().zzb(getClass()).zzm(this, zzgvu.zza(zzgvtVar));
    }

    public final boolean zzaX() {
        byte bByteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzk = zzgye.zza().zzb(getClass()).zzk(this);
        zzb(2, true != zZzk ? null : this, null);
        return zZzk;
    }

    final boolean zzaY() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgun
    final int zzat(zzgyp zzgypVar) {
        if (zzaY()) {
            int iZza = zzgypVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = zzgypVar.zza(this);
        if (iZza2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
    }

    final int zzay() {
        return zzgye.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxw
    public final int zzaz() {
        int iZza;
        if (zzaY()) {
            iZza = zza(null);
            if (iZza < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
            }
        } else {
            iZza = this.zzd & Integer.MAX_VALUE;
            if (iZza == Integer.MAX_VALUE) {
                iZza = zza(null);
                if (iZza < 0) {
                    throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza;
            }
        }
        return iZza;
    }

    protected abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzgxx
    public final /* synthetic */ zzgxw zzbg() {
        return (zzgwm) zzb(6, null, null);
    }
}
