package com.google.zxing;

/* JADX INFO: loaded from: classes3.dex */
public final class ChecksumException extends ReaderException {
    private static final ChecksumException c;

    static {
        ChecksumException checksumException = new ChecksumException();
        c = checksumException;
        checksumException.setStackTrace(ReaderException.b);
    }

    private ChecksumException() {
    }

    private ChecksumException(Throwable th) {
        super(th);
    }

    public static ChecksumException getChecksumInstance() {
        return ReaderException.a ? new ChecksumException() : c;
    }

    public static ChecksumException getChecksumInstance(Throwable th) {
        return ReaderException.a ? new ChecksumException(th) : c;
    }
}
