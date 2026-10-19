package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import com.google.android.datatransport.runtime.backends.CreationContext;
import com.google.android.datatransport.runtime.backends.h;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class CctBackendFactory implements com.google.android.datatransport.runtime.backends.d {
    @Override // com.google.android.datatransport.runtime.backends.d
    public h create(CreationContext creationContext) {
        return new c(creationContext.a(), creationContext.d(), creationContext.c());
    }
}
