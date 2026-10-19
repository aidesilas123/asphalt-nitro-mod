###### Class com.google.protobuf.e1 (com.google.protobuf.e1)
.class public final Lcom/google/protobuf/e1;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/e1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0011\u001a\u00020\u0012H\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/protobuf/OptionKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Option$Builder;",
        "(Lcom/google/protobuf/Option$Builder;)V",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "Lcom/google/protobuf/Any;",
        "getValue",
        "()Lcom/google/protobuf/Any;",
        "setValue",
        "(Lcom/google/protobuf/Any;)V",
        "_build",
        "Lcom/google/protobuf/Option;",
        "clearName",
        "",
        "clearValue",
        "hasValue",
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
.field public static final Companion:Lcom/google/protobuf/e1$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Option$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/e1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/e1$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/e1;->Companion:Lcom/google/protobuf/e1$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Option$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Option$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/Option$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Option;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$b;->clearName()Lcom/google/protobuf/Option$b;

    return-void
.end method

.method public final clearValue()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$b;->clearValue()Lcom/google/protobuf/Option$b;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getValue()Lcom/google/protobuf/Any;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$b;->getValue()Lcom/google/protobuf/Any;

    move-result-object v0

    const-string v1, "_builder.getValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasValue()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$b;->hasValue()Z

    move-result v0

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Option$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Option$b;

    return-void
.end method

.method public final setValue(Lcom/google/protobuf/Any;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/e1;->_builder:Lcom/google/protobuf/Option$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Option$b;->setValue(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Option$b;

    return-void
.end method

###### Class com.google.protobuf.e1.Companion (com.google.protobuf.e1$a)
.class public final Lcom/google/protobuf/e1$a;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/e1;
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
        "Lcom/google/protobuf/OptionKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/OptionKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/Option$Builder;",
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

    invoke-direct {p0}, Lcom/google/protobuf/e1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Option$b;)Lcom/google/protobuf/e1;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/e1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/Option$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
