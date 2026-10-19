package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: InvalidProtocolBufferException.java */
/* JADX INFO: loaded from: classes3.dex */
public class d0 extends IOException {
    private static final long serialVersionUID = -1616151763072450476L;
    private q0 unfinishedMessage;
    private boolean wasThrownFromInputStream;

    /* JADX INFO: compiled from: InvalidProtocolBufferException.java */
    public static class a extends d0 {
        private static final long serialVersionUID = 3283890091615336259L;

        public a(String str) {
            super(str);
        }
    }

    public d0(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.unfinishedMessage = null;
    }

    public d0(Exception exc) {
        super(exc.getMessage(), exc);
        this.unfinishedMessage = null;
    }

    public d0(String str) {
        super(str);
        this.unfinishedMessage = null;
    }

    public d0(String str, IOException iOException) {
        super(str, iOException);
        this.unfinishedMessage = null;
    }

    public d0(String str, Exception exc) {
        super(str, exc);
        this.unfinishedMessage = null;
    }

    static d0 invalidEndTag() {
        return new d0("Protocol message end-group tag did not match expected tag.");
    }

    static d0 invalidTag() {
        return new d0("Protocol message contained an invalid tag (zero).");
    }

    static d0 invalidUtf8() {
        return new d0("Protocol message had invalid UTF-8.");
    }

    static a invalidWireType() {
        return new a("Protocol message tag had invalid wire type.");
    }

    static d0 malformedVarint() {
        return new d0("CodedInputStream encountered a malformed varint.");
    }

    static d0 negativeSize() {
        return new d0("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static d0 parseFailure() {
        return new d0("Failed to parse the message.");
    }

    static d0 recursionLimitExceeded() {
        return new d0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    static d0 sizeLimitExceeded() {
        return new d0("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    static d0 truncatedMessage() {
        return new d0("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    boolean getThrownFromInputStream() {
        return this.wasThrownFromInputStream;
    }

    public q0 getUnfinishedMessage() {
        return this.unfinishedMessage;
    }

    void setThrownFromInputStream() {
        this.wasThrownFromInputStream = true;
    }

    public d0 setUnfinishedMessage(q0 q0Var) {
        this.unfinishedMessage = q0Var;
        return this;
    }

    public IOException unwrapIOException() {
        return getCause() instanceof IOException ? (IOException) getCause() : this;
    }
}
