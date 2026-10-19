package com.google.android.datatransport;

import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_Event.java */
/* JADX INFO: loaded from: classes2.dex */
final class a<T> extends Event<T> {
    private final Integer a;
    private final T b;
    private final Priority c;

    a(@Nullable Integer num, T t, Priority priority) {
        this.a = num;
        Objects.requireNonNull(t, "Null payload");
        this.b = t;
        Objects.requireNonNull(priority, "Null priority");
        this.c = priority;
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    public Integer a() {
        return this.a;
    }

    @Override // com.google.android.datatransport.Event
    public T b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.Event
    public Priority c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Event)) {
            return false;
        }
        Event event = (Event) obj;
        Integer num = this.a;
        if (num != null ? num.equals(event.a()) : event.a() == null) {
            if (this.b.equals(event.b()) && this.c.equals(event.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.a + ", payload=" + this.b + ", priority=" + this.c + "}";
    }
}
