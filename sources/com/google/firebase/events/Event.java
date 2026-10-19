package com.google.firebase.events;

/* JADX INFO: loaded from: classes3.dex */
public class Event<T> {
    private final Class<T> a;
    private final T b;

    public T a() {
        return this.b;
    }

    public Class<T> b() {
        return this.a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.a, this.b);
    }
}
