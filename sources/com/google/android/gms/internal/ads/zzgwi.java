package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgwi;
import com.google.android.gms.internal.ads.zzgwm;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzgwi<MessageType extends zzgwm<MessageType, BuilderType>, BuilderType extends zzgwi<MessageType, BuilderType>> extends zzgum<MessageType, BuilderType> {
    protected zzgwm zza;
    private final zzgwm zzb;

    protected zzgwi(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzaY()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = messagetype.zzaD();
    }

    private static void zza(Object obj, Object obj2) {
        zzgye.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgum
    /* JADX INFO: renamed from: zzai, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzgwi zzah() {
        zzgwi zzgwiVar = (zzgwi) this.zzb.zzb(5, null, null);
        zzgwiVar.zza = zzan();
        return zzgwiVar;
    }

    public final zzgwi zzaj(zzgwm zzgwmVar) {
        if (!this.zzb.equals(zzgwmVar)) {
            if (!this.zza.zzaY()) {
                zzaq();
            }
            zza(this.zza, zzgwmVar);
        }
        return this;
    }

    public final zzgwi zzak(byte[] bArr, int i, int i2, zzgvy zzgvyVar) throws zzgwy {
        if (!this.zza.zzaY()) {
            zzaq();
        }
        try {
            zzgye.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzguq(zzgvyVar));
            return this;
        } catch (zzgwy e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
        } catch (IndexOutOfBoundsException unused) {
            throw zzgwy.zzj();
        }
    }

    public final MessageType zzal() {
        MessageType messagetype = (MessageType) zzan();
        if (messagetype.zzaX()) {
            return messagetype;
        }
        throw new zzgzf(messagetype);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    /* JADX INFO: renamed from: zzam, reason: merged with bridge method [inline-methods] */
    public MessageType zzan() {
        if (!this.zza.zzaY()) {
            return (MessageType) this.zza;
        }
        this.zza.zzaS();
        return (MessageType) this.zza;
    }

    protected final void zzap() {
        if (this.zza.zzaY()) {
            return;
        }
        zzaq();
    }

    protected void zzaq() {
        zzgwm zzgwmVarZzaD = this.zzb.zzaD();
        zza(zzgwmVarZzaD, this.zza);
        this.zza = zzgwmVarZzaD;
    }

    @Override // com.google.android.gms.internal.ads.zzgxx
    public final /* synthetic */ zzgxw zzbg() {
        throw null;
    }
}
