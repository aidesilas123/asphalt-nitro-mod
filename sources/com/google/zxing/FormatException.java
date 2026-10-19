package com.google.zxing;

/* JADX INFO: loaded from: classes3.dex */
public final class FormatException extends ReaderException {
    private static final FormatException c;

    static {
        FormatException formatException = new FormatException();
        c = formatException;
        formatException.setStackTrace(ReaderException.b);
    }

    private FormatException() {
    }

    private FormatException(Throwable th) {
        super(th);
    }

    public static FormatException getFormatInstance() {
        return ReaderException.a ? new FormatException() : c;
    }

    public static FormatException getFormatInstance(Throwable th) {
        return ReaderException.a ? new FormatException(th) : c;
    }
}
