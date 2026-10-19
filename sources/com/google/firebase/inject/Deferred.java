package com.google.firebase.inject;

import com.google.firebase.annotations.DeferredApi;

/* JADX INFO: loaded from: classes3.dex */
public interface Deferred<T> {

    public interface DeferredHandler<T> {
        @DeferredApi
        void a(Provider<T> provider);
    }
}
