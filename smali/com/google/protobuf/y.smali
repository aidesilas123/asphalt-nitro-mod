###### Class com.google.protobuf.y (com.google.protobuf.y)
.class public final Lcom/google/protobuf/y;
.super Ljava/lang/Object;
.source "FieldMaskKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/y$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001c\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0001J%\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u0010J+\u0010\u0011\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013H\u0007\u00a2\u0006\u0002\u0008\u0014J\u001d\u0010\u0015\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u0008\u0016J&\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008\u0018J,\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013H\u0087\n\u00a2\u0006\u0002\u0008\u0019J.\u0010\u001a\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/protobuf/FieldMaskKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/FieldMask$Builder;",
        "(Lcom/google/protobuf/FieldMask$Builder;)V",
        "paths",
        "Lcom/google/protobuf/kotlin/DslList;",
        "",
        "Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;",
        "getPaths",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "_build",
        "Lcom/google/protobuf/FieldMask;",
        "add",
        "",
        "value",
        "addPaths",
        "addAll",
        "values",
        "",
        "addAllPaths",
        "clear",
        "clearPaths",
        "plusAssign",
        "plusAssignPaths",
        "plusAssignAllPaths",
        "set",
        "index",
        "",
        "setPaths",
        "Companion",
        "PathsProxy",
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
.field public static final Companion:Lcom/google/protobuf/y$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/FieldMask$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/y$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/y;->Companion:Lcom/google/protobuf/y$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/FieldMask$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/FieldMask$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/y;-><init>(Lcom/google/protobuf/FieldMask$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/FieldMask;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/FieldMask;

    return-object v0
.end method

.method public final synthetic addAllPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldMask$b;->addAllPaths(Ljava/lang/Iterable;)Lcom/google/protobuf/FieldMask$b;

    return-void
.end method

.method public final synthetic addPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldMask$b;->addPaths(Ljava/lang/String;)Lcom/google/protobuf/FieldMask$b;

    return-void
.end method

.method public final synthetic clearPaths(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {p1}, Lcom/google/protobuf/FieldMask$b;->clearPaths()Lcom/google/protobuf/FieldMask$b;

    return-void
.end method

.method public final getPaths()Lcom/google/protobuf/kotlin/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/a<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldMask$b;->getPathsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getPathsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y;->addAllPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y;->addPaths(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic setPaths(Lcom/google/protobuf/kotlin/a;ILjava/lang/String;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/y;->_builder:Lcom/google/protobuf/FieldMask$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/FieldMask$b;->setPaths(ILjava/lang/String;)Lcom/google/protobuf/FieldMask$b;

    return-void
.end method

###### Class com.google.protobuf.y.Companion (com.google.protobuf.y$a)
.class public final Lcom/google/protobuf/y$a;
.super Ljava/lang/Object;
.source "FieldMaskKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/y;
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
        "Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/FieldMaskKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/FieldMask$Builder;",
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

    invoke-direct {p0}, Lcom/google/protobuf/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/FieldMask$b;)Lcom/google/protobuf/y;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/y;-><init>(Lcom/google/protobuf/FieldMask$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
