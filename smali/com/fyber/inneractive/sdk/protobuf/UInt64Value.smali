###### Class com.fyber.inneractive.sdk.protobuf.UInt64Value (com.fyber.inneractive.sdk.protobuf.UInt64Value)
.class public final Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
.super Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite<",
        "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;",
        "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

.field private static volatile PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/protobuf/w0<",
            "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    const-class v1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->setValue(J)V

    return-void
.end method

.method public static synthetic access$200(Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object v0
.end method

.method public static newBuilder()Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->createBuilder()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->createBuilder(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;

    return-object p0
.end method

.method public static of(J)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 4

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->newBuilder()Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->c()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v1, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->access$100(Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;J)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/i;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/i;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/i;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/i;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/j;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/j;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;[B)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom([BLcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;[BLcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parser()Lcom/fyber/inneractive/sdk/protobuf/w0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/inneractive/sdk/protobuf/w0<",
            "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->getParserForType()Lcom/fyber/inneractive/sdk/protobuf/w0;

    move-result-object v0

    return-object v0
.end method

.method private setValue(J)V
    .registers 3

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->value_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_52

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    const/4 p1, 0x0

    return-object p1

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    if-nez p1, :cond_32

    const-class p2, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-direct {p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;-><init>(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    :pswitch_33
    sget-object p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0003"

    invoke-static {p2, p3, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/fyber/inneractive/sdk/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_46
    new-instance p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;-><init>()V

    return-object p1

    :pswitch_4c
    new-instance p1, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_12
    .end packed-switch
.end method

.method public getValue()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->value_:J

    return-wide v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.UInt64Value.a (com.fyber.inneractive.sdk.protobuf.UInt64Value$a)
.class public synthetic Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->values()[Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->NEW_MUTABLE_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->NEW_BUILDER:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->BUILD_MESSAGE_INFO:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->GET_DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->GET_PARSER:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->GET_MEMOIZED_IS_INITIALIZED:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;->SET_MEMOIZED_IS_INITIALIZED:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.UInt64Value.b (com.fyber.inneractive.sdk.protobuf.UInt64Value$b)
.class public final Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;
.super Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b<",
        "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;",
        "Lcom/fyber/inneractive/sdk/protobuf/UInt64Value$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;->access$000()Lcom/fyber/inneractive/sdk/protobuf/UInt64Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;-><init>(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method
