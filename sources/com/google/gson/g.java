package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: compiled from: JsonElement.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class g {
    @Deprecated
    public g() {
    }

    public d e() {
        if (h()) {
            return (d) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public j f() {
        if (j()) {
            return (j) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public l g() {
        if (l()) {
            return (l) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public boolean h() {
        return this instanceof d;
    }

    public boolean i() {
        return this instanceof i;
    }

    public boolean j() {
        return this instanceof j;
    }

    public boolean l() {
        return this instanceof l;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            jsonWriter.setLenient(true);
            Streams.write(this, jsonWriter);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
