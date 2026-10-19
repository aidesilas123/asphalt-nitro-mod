###### Class com.google.protobuf.q1 (com.google.protobuf.q1)
.class public final Lcom/google/protobuf/q1;
.super Ljava/lang/Object;
.source "StructKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/q1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0001J#\u0010\u000e\u001a\u00020\u000f*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u0007\u00a2\u0006\u0002\u0008\u0010J3\u0010\u0011\u001a\u00020\u000f*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0008\u0014J7\u0010\u0015\u001a\u00020\u000f*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0017H\u0007\u00a2\u0006\u0002\u0008\u0018J+\u0010\u0019\u001a\u00020\u000f*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u001aJ4\u0010\u001b\u001a\u00020\u000f*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0008H\u0087\n\u00a2\u0006\u0002\u0008\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00068G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/protobuf/StructKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Struct$Builder;",
        "(Lcom/google/protobuf/Struct$Builder;)V",
        "fields",
        "Lcom/google/protobuf/kotlin/DslMap;",
        "",
        "Lcom/google/protobuf/Value;",
        "Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;",
        "getFieldsMap",
        "()Lcom/google/protobuf/kotlin/DslMap;",
        "_build",
        "Lcom/google/protobuf/Struct;",
        "clear",
        "",
        "clearFields",
        "put",
        "key",
        "value",
        "putFields",
        "putAll",
        "map",
        "",
        "putAllFields",
        "remove",
        "removeFields",
        "set",
        "setFields",
        "Companion",
        "FieldsProxy",
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
.field public static final Companion:Lcom/google/protobuf/q1$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Struct$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/q1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/q1$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/q1;->Companion:Lcom/google/protobuf/q1$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Struct$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Struct$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/q1;-><init>(Lcom/google/protobuf/Struct$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Struct;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Struct;

    return-object v0
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/b;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->clearFields()Lcom/google/protobuf/Struct$b;

    return-void
.end method

.method public final synthetic getFieldsMap()Lcom/google/protobuf/kotlin/b;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/b;

    iget-object v1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Struct$b;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_builder.getFieldsMap()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic putAllFields(Lcom/google/protobuf/kotlin/b;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$b;->putAllFields(Ljava/util/Map;)Lcom/google/protobuf/Struct$b;

    return-void
.end method

.method public final putFields(Lcom/google/protobuf/kotlin/b;Ljava/lang/String;Lcom/google/protobuf/Value;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/b<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Struct$b;->putFields(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$b;

    return-void
.end method

.method public final synthetic removeFields(Lcom/google/protobuf/kotlin/b;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/q1;->_builder:Lcom/google/protobuf/Struct$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$b;->removeFields(Ljava/lang/String;)Lcom/google/protobuf/Struct$b;

    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/b;Ljava/lang/String;Lcom/google/protobuf/Value;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/b<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/q1;->putFields(Lcom/google/protobuf/kotlin/b;Ljava/lang/String;Lcom/google/protobuf/Value;)V

    return-void
.end method

###### Class com.google.protobuf.q1.Companion (com.google.protobuf.q1$a)
.class public final Lcom/google/protobuf/q1$a;
.super Ljava/lang/Object;
.source "StructKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q1;
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
        "Lcom/google/protobuf/StructKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/StructKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/Struct$Builder;",
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

    invoke-direct {p0}, Lcom/google/protobuf/q1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Struct$b;)Lcom/google/protobuf/q1;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/q1;-><init>(Lcom/google/protobuf/Struct$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
