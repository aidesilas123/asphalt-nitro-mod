package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class AbstractComponentContainer implements ComponentContainer {
    AbstractComponentContainer() {
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> T a(Class<T> cls) {
        Provider<T> providerD = d(cls);
        if (providerD == null) {
            return null;
        }
        return providerD.get();
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Set<T> c(Class<T> cls) {
        return b(cls).get();
    }
}
