package com.applovin.impl.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final List<b> aXf;

    private c(List<b> list) {
        this.aXf = list;
    }

    @Nullable
    public static c a(y yVar, @Nullable c cVar, e eVar, com.applovin.impl.sdk.n nVar) {
        try {
            List<b> listMm = cVar != null ? cVar.Mm() : new ArrayList<>();
            Iterator<y> it = yVar.dJ("Verification").iterator();
            while (it.hasNext()) {
                b bVarA = b.a(it.next(), eVar, nVar);
                if (bVarA != null) {
                    listMm.add(bVarA);
                }
            }
            return new c(listMm);
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastAdVerifications", "Error occurred while initializing", th);
            }
            nVar.Cs().g("VastAdVerifications", th);
            return null;
        }
    }

    public List<b> Mm() {
        return this.aXf;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.aXf.equals(((c) obj).aXf);
        }
        return false;
    }

    public int hashCode() {
        return this.aXf.hashCode();
    }

    @NonNull
    public String toString() {
        return "VastAdVerification{verifications='" + this.aXf + "'}";
    }
}
