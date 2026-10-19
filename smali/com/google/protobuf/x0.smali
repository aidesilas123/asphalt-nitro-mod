###### Class com.google.protobuf.x0 (com.google.protobuf.x0)
.class public final Lcom/google/protobuf/x0;
.super Ljava/lang/Object;
.source "MixinKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/x0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/protobuf/MixinKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Mixin$Builder;",
        "(Lcom/google/protobuf/Mixin$Builder;)V",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "root",
        "getRoot",
        "setRoot",
        "_build",
        "Lcom/google/protobuf/Mixin;",
        "clearName",
        "",
        "clearRoot",
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
.field public static final Companion:Lcom/google/protobuf/x0$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Mixin$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/x0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/x0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/x0;->Companion:Lcom/google/protobuf/x0$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Mixin$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Mixin$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/x0;-><init>(Lcom/google/protobuf/Mixin$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Mixin;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin$b;->clearName()Lcom/google/protobuf/Mixin$b;

    return-void
.end method

.method public final clearRoot()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin$b;->clearRoot()Lcom/google/protobuf/Mixin$b;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRoot()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin$b;->getRoot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getRoot()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Mixin$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Mixin$b;

    return-void
.end method

.method public final setRoot(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/x0;->_builder:Lcom/google/protobuf/Mixin$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Mixin$b;->setRoot(Ljava/lang/String;)Lcom/google/protobuf/Mixin$b;

    return-void
.end method

###### Class com.google.protobuf.x0.Companion (com.google.protobuf.x0$a)
.class public final Lcom/google/protobuf/x0$a;
.super Ljava/lang/Object;
.source "MixinKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/x0;
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
        "Lcom/google/protobuf/MixinKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/MixinKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/Mixin$Builder;",
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

    invoke-direct {p0}, Lcom/google/protobuf/x0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Mixin$b;)Lcom/google/protobuf/x0;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/x0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/x0;-><init>(Lcom/google/protobuf/Mixin$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
