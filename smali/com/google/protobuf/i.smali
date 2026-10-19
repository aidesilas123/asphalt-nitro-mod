###### Class com.google.protobuf.i (com.google.protobuf.i)
.class public final Lcom/google/protobuf/i;
.super Ljava/lang/Object;
.source "BoolValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0001J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/protobuf/BoolValueKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/BoolValue$Builder;",
        "(Lcom/google/protobuf/BoolValue$Builder;)V",
        "value",
        "",
        "getValue",
        "()Z",
        "setValue",
        "(Z)V",
        "_build",
        "Lcom/google/protobuf/BoolValue;",
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
.field public static final Companion:Lcom/google/protobuf/i$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/BoolValue$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/i$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/i;->Companion:Lcom/google/protobuf/i$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/BoolValue$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/i;->_builder:Lcom/google/protobuf/BoolValue$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/BoolValue$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/i;-><init>(Lcom/google/protobuf/BoolValue$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/BoolValue;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/i;->_builder:Lcom/google/protobuf/BoolValue$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/BoolValue;

    return-object v0
.end method

.method public final clearValue()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/i;->_builder:Lcom/google/protobuf/BoolValue$b;

    invoke-virtual {v0}, Lcom/google/protobuf/BoolValue$b;->clearValue()Lcom/google/protobuf/BoolValue$b;

    return-void
.end method

.method public final getValue()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/i;->_builder:Lcom/google/protobuf/BoolValue$b;

    invoke-virtual {v0}, Lcom/google/protobuf/BoolValue$b;->getValue()Z

    move-result v0

    return v0
.end method

.method public final setValue(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/i;->_builder:Lcom/google/protobuf/BoolValue$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->setValue(Z)Lcom/google/protobuf/BoolValue$b;

    return-void
.end method

###### Class com.google.protobuf.i.Companion (com.google.protobuf.i$a)
.class public final Lcom/google/protobuf/i$a;
.super Ljava/lang/Object;
.source "BoolValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/protobuf/BoolValueKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/BoolValueKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/BoolValue$Builder;",
        "protobuf-kotlin-lite"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/BoolValue$b;)Lcom/google/protobuf/i;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/i;-><init>(Lcom/google/protobuf/BoolValue$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
