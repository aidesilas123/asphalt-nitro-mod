package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonParser {
    @Deprecated
    public JsonParser() {
    }

    public static g parseReader(JsonReader jsonReader) throws h, o {
        boolean zIsLenient = jsonReader.isLenient();
        jsonReader.setLenient(true);
        try {
            try {
                return Streams.parse(jsonReader);
            } catch (OutOfMemoryError e2) {
                throw new k("Failed parsing JSON source: " + jsonReader + " to Json", e2);
            } catch (StackOverflowError e3) {
                throw new k("Failed parsing JSON source: " + jsonReader + " to Json", e3);
            }
        } finally {
            jsonReader.setLenient(zIsLenient);
        }
    }

    public static g parseReader(Reader reader) throws h, o {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            g reader2 = parseReader(jsonReader);
            if (!reader2.i() && jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new o("Did not consume the entire document.");
            }
            return reader2;
        } catch (MalformedJsonException e2) {
            throw new o(e2);
        } catch (IOException e3) {
            throw new h(e3);
        } catch (NumberFormatException e4) {
            throw new o(e4);
        }
    }

    public static g parseString(String str) throws o {
        return parseReader(new StringReader(str));
    }
}
