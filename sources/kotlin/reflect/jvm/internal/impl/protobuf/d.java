package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: InvalidProtocolBufferException.java */
/* JADX INFO: loaded from: classes5.dex */
public class d extends IOException {
    private j a;

    public d(String str) {
        super(str);
        this.a = null;
    }

    static d d() {
        return new d("Protocol message end-group tag did not match expected tag.");
    }

    static d e() {
        return new d("Protocol message contained an invalid tag (zero).");
    }

    static d f() {
        return new d("Protocol message had invalid UTF-8.");
    }

    static d g() {
        return new d("Protocol message tag had invalid wire type.");
    }

    static d h() {
        return new d("CodedInputStream encountered a malformed varint.");
    }

    static d i() {
        return new d("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static d j() {
        return new d("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    static d m() {
        return new d("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    static d n() {
        return new d("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    public j c() {
        return this.a;
    }

    public d k(j jVar) {
        this.a = jVar;
        return this;
    }
}
