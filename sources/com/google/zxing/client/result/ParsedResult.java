package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ParsedResult {
    private final ParsedResultType a;

    protected ParsedResult(ParsedResultType parsedResultType) {
        this.a = parsedResultType;
    }

    public static void maybeAppend(String str, StringBuilder sb) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                maybeAppend(str, sb);
            }
        }
    }

    public abstract String a();

    public final String toString() {
        return a();
    }
}
