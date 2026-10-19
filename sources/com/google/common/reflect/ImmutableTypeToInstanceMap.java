package com.google.common.reflect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.y0;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableTypeToInstanceMap<B> extends y0<TypeToken<? extends B>, B> implements Map {
    private final ImmutableMap<TypeToken<? extends B>, B> a;

    public static final class b<B> {
        private final ImmutableMap.b<TypeToken<? extends B>, B> a;

        private b() {
            this.a = ImmutableMap.builder();
        }
    }

    private ImmutableTypeToInstanceMap(ImmutableMap<TypeToken<? extends B>, B> immutableMap) {
        this.a = immutableMap;
    }

    public static <B> b<B> builder() {
        return new b<>();
    }

    public static <B> ImmutableTypeToInstanceMap<B> of() {
        return new ImmutableTypeToInstanceMap<>(ImmutableMap.of());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.d1
    /* JADX INFO: renamed from: C */
    public Map<TypeToken<? extends B>, B> P() {
        return this.a;
    }

    @Override // com.google.common.collect.y0, java.util.Map
    @Deprecated
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public B put(TypeToken<? extends B> typeToken, B b2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y0, java.util.Map
    @Deprecated
    public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException();
    }
}
