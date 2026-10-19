package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgum;
import com.google.android.gms.internal.ads.zzgun;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgun<MessageType extends zzgun<MessageType, BuilderType>, BuilderType extends zzgum<MessageType, BuilderType>> implements zzgxw {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    protected static void zzav(Iterable iterable, List list) {
        byte[] bArr = zzgww.zzd;
        Objects.requireNonNull(iterable);
        if (iterable instanceof zzgxe) {
            List listZzh = ((zzgxe) iterable).zzh();
            zzgxe zzgxeVar = (zzgxe) list;
            int size = list.size();
            for (Object obj : listZzh) {
                if (obj == null) {
                    String str = "Element at index " + (zzgxeVar.size() - size) + " is null.";
                    int size2 = zzgxeVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(str);
                        }
                        zzgxeVar.remove(size2);
                    }
                } else if (obj instanceof zzgve) {
                    zzgxeVar.zzi((zzgve) obj);
                } else {
                    zzgxeVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzgyd) {
            list.addAll(iterable);
            return;
        }
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(str2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    int zzat(zzgyp zzgypVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxw
    public final zzgve zzau() {
        try {
            int iZzaz = zzaz();
            zzgve zzgveVar = zzgve.zzb;
            byte[] bArr = new byte[iZzaz];
            zzgvt zzgvtVarZzC = zzgvt.zzC(bArr, 0, iZzaz);
            zzaW(zzgvtVarZzC);
            zzgvtVarZzC.zzD();
            return new zzgva(bArr);
        } catch (IOException e2) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e2);
        }
    }

    public final void zzaw(OutputStream outputStream) throws IOException {
        int iZzaz = zzaz();
        int i = zzgvt.zzf;
        if (iZzaz > 4096) {
            iZzaz = 4096;
        }
        zzgvr zzgvrVar = new zzgvr(outputStream, iZzaz);
        zzaW(zzgvrVar);
        zzgvrVar.zzI();
    }

    public final byte[] zzax() {
        try {
            int iZzaz = zzaz();
            byte[] bArr = new byte[iZzaz];
            zzgvt zzgvtVarZzC = zzgvt.zzC(bArr, 0, iZzaz);
            zzaW(zzgvtVarZzC);
            zzgvtVarZzC.zzD();
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e2);
        }
    }
}
