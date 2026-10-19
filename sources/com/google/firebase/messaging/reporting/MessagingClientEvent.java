package com.google.firebase.messaging.reporting;

import com.google.firebase.encoders.proto.ProtoEnum;
import com.google.firebase.encoders.proto.Protobuf;

/* JADX INFO: loaded from: classes3.dex */
public final class MessagingClientEvent {
    private static final MessagingClientEvent a = new Builder().a();
    private final long b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MessageType f4175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SDKPlatform f4176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4177g;
    private final String h;
    private final int i;
    private final int j;
    private final String k;
    private final long l;
    private final Event m;
    private final String n;
    private final long o;
    private final String p;

    public static final class Builder {
        private long a = 0;
        private String b = "";
        private String c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MessageType f4178d = MessageType.UNKNOWN;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SDKPlatform f4179e = SDKPlatform.UNKNOWN_OS;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f4180f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f4181g = "";
        private int h = 0;
        private int i = 0;
        private String j = "";
        private long k = 0;
        private Event l = Event.UNKNOWN_EVENT;
        private String m = "";
        private long n = 0;
        private String o = "";

        Builder() {
        }

        public MessagingClientEvent a() {
            return new MessagingClientEvent(this.a, this.b, this.c, this.f4178d, this.f4179e, this.f4180f, this.f4181g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
        }

        public Builder b(String str) {
            this.m = str;
            return this;
        }

        public Builder c(String str) {
            this.f4181g = str;
            return this;
        }

        public Builder d(String str) {
            this.o = str;
            return this;
        }

        public Builder e(Event event) {
            this.l = event;
            return this;
        }

        public Builder f(String str) {
            this.c = str;
            return this;
        }

        public Builder g(String str) {
            this.b = str;
            return this;
        }

        public Builder h(MessageType messageType) {
            this.f4178d = messageType;
            return this;
        }

        public Builder i(String str) {
            this.f4180f = str;
            return this;
        }

        public Builder j(long j) {
            this.a = j;
            return this;
        }

        public Builder k(SDKPlatform sDKPlatform) {
            this.f4179e = sDKPlatform;
            return this;
        }

        public Builder l(String str) {
            this.j = str;
            return this;
        }

        public Builder m(int i) {
            this.i = i;
            return this;
        }
    }

    public enum Event implements ProtoEnum {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f4183e;

        Event(int i) {
            this.f4183e = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public int getNumber() {
            return this.f4183e;
        }
    }

    public enum MessageType implements ProtoEnum {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f4186f;

        MessageType(int i) {
            this.f4186f = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public int getNumber() {
            return this.f4186f;
        }
    }

    public enum SDKPlatform implements ProtoEnum {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f4189f;

        SDKPlatform(int i) {
            this.f4189f = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public int getNumber() {
            return this.f4189f;
        }
    }

    MessagingClientEvent(long j, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i, int i2, String str5, long j2, Event event, String str6, long j3, String str7) {
        this.b = j;
        this.c = str;
        this.f4174d = str2;
        this.f4175e = messageType;
        this.f4176f = sDKPlatform;
        this.f4177g = str3;
        this.h = str4;
        this.i = i;
        this.j = i2;
        this.k = str5;
        this.l = j2;
        this.m = event;
        this.n = str6;
        this.o = j3;
        this.p = str7;
    }

    public static MessagingClientEvent getDefaultInstance() {
        return a;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 13)
    public String a() {
        return this.n;
    }

    @Protobuf(tag = 11)
    public long b() {
        return this.l;
    }

    @Protobuf(tag = 14)
    public long c() {
        return this.o;
    }

    @Protobuf(tag = 7)
    public String d() {
        return this.h;
    }

    @Protobuf(tag = 15)
    public String e() {
        return this.p;
    }

    @Protobuf(tag = 12)
    public Event f() {
        return this.m;
    }

    @Protobuf(tag = 3)
    public String g() {
        return this.f4174d;
    }

    @Protobuf(tag = 2)
    public String h() {
        return this.c;
    }

    @Protobuf(tag = 4)
    public MessageType i() {
        return this.f4175e;
    }

    @Protobuf(tag = 6)
    public String j() {
        return this.f4177g;
    }

    @Protobuf(tag = 8)
    public int k() {
        return this.i;
    }

    @Protobuf(tag = 1)
    public long l() {
        return this.b;
    }

    @Protobuf(tag = 5)
    public SDKPlatform m() {
        return this.f4176f;
    }

    @Protobuf(tag = 10)
    public String n() {
        return this.k;
    }

    @Protobuf(tag = 9)
    public int o() {
        return this.j;
    }
}
