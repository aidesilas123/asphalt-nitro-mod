###### Class com.google.protobuf.o (com.google.protobuf.o)
.class public final Lcom/google/protobuf/o;
.super Ljava/lang/Object;
.source "EmptyKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/protobuf/EmptyKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Empty$Builder;",
        "(Lcom/google/protobuf/Empty$Builder;)V",
        "_build",
        "Lcom/google/protobuf/Empty;",
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
.field public static final Companion:Lcom/google/protobuf/o$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Empty$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/o$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/o;->Companion:Lcom/google/protobuf/o$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Empty$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/o;->_builder:Lcom/google/protobuf/Empty$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Empty$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/o;-><init>(Lcom/google/protobuf/Empty$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Empty;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/o;->_builder:Lcom/google/protobuf/Empty$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0
.end method
