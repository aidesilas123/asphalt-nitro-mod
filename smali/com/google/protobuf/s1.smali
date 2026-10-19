###### Class com.google.protobuf.s1 (com.google.protobuf.s1)
.class public final Lcom/google/protobuf/s1;
.super Ljava/lang/Object;
.source "TimestampKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/s1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/protobuf/TimestampKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Timestamp$Builder;",
        "(Lcom/google/protobuf/Timestamp$Builder;)V",
        "value",
        "",
        "nanos",
        "getNanos",
        "()I",
        "setNanos",
        "(I)V",
        "",
        "seconds",
        "getSeconds",
        "()J",
        "setSeconds",
        "(J)V",
        "_build",
        "Lcom/google/protobuf/Timestamp;",
        "clearNanos",
        "",
        "clearSeconds",
        "Companion",
        "protobuf-kotlin-lite"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/s1$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Timestamp$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/s1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/s1$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/s1;->Companion:Lcom/google/protobuf/s1$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Timestamp$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Timestamp$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/s1;-><init>(Lcom/google/protobuf/Timestamp$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Timestamp;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0
.end method

.method public final clearNanos()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->clearNanos()Lcom/google/protobuf/Timestamp$b;

    return-void
.end method

.method public final clearSeconds()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->clearSeconds()Lcom/google/protobuf/Timestamp$b;

    return-void
.end method

.method public final getNanos()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->getNanos()I

    move-result v0

    return v0
.end method

.method public final getSeconds()J
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setNanos(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->setNanos(I)Lcom/google/protobuf/Timestamp$b;

    return-void
.end method

.method public final setSeconds(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/s1;->_builder:Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Timestamp$b;->setSeconds(J)Lcom/google/protobuf/Timestamp$b;

    return-void
.end method
