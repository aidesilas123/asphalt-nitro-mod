###### Class com.google.protobuf.c0 (com.google.protobuf.c0)
.class public final Lcom/google/protobuf/c0;
.super Ljava/lang/Object;
.source "Int64ValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0001J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/protobuf/Int64ValueKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Int64Value$Builder;",
        "(Lcom/google/protobuf/Int64Value$Builder;)V",
        "value",
        "",
        "getValue",
        "()J",
        "setValue",
        "(J)V",
        "_build",
        "Lcom/google/protobuf/Int64Value;",
        "clearValue",
        "",
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
.field public static final Companion:Lcom/google/protobuf/c0$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Int64Value$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/c0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/c0;->Companion:Lcom/google/protobuf/c0$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Int64Value$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/c0;->_builder:Lcom/google/protobuf/Int64Value$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Int64Value$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/c0;-><init>(Lcom/google/protobuf/Int64Value$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Int64Value;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/c0;->_builder:Lcom/google/protobuf/Int64Value$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Int64Value;

    return-object v0
.end method

.method public final clearValue()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/c0;->_builder:Lcom/google/protobuf/Int64Value$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value$b;->clearValue()Lcom/google/protobuf/Int64Value$b;

    return-void
.end method

.method public final getValue()J
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/c0;->_builder:Lcom/google/protobuf/Int64Value$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value$b;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setValue(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/c0;->_builder:Lcom/google/protobuf/Int64Value$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Int64Value$b;->setValue(J)Lcom/google/protobuf/Int64Value$b;

    return-void
.end method
