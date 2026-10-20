###### Class kotlin.reflect.jvm.internal.impl.protobuf.d (kotlin.reflect.jvm.internal.impl.protobuf.d)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/d;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/protobuf/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    return-void
.end method

.method static d()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static j()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static m()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static n()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lkotlin/reflect/jvm/internal/impl/protobuf/j;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    return-object v0
.end method

.method public k(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    return-object p0
.end method
