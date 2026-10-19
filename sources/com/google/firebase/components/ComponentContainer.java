package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface ComponentContainer {
    <T> T a(Class<T> cls);

    <T> Provider<Set<T>> b(Class<T> cls);

    <T> Set<T> c(Class<T> cls);

    <T> Provider<T> d(Class<T> cls);
}
