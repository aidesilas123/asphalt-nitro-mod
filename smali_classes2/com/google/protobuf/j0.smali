###### Class com.google.protobuf.j0 (com.google.protobuf.j0)
.class public final Lcom/google/protobuf/j0;
.super Ljava/lang/Object;
.source "ListValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/j0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0001J%\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u0010J+\u0010\u0011\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0007\u00a2\u0006\u0002\u0008\u0013J\u001d\u0010\u0014\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u0008\u0015J&\u0010\u0016\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008\u0017J,\u0010\u0016\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0087\n\u00a2\u0006\u0002\u0008\u0018J.\u0010\u0019\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/protobuf/ListValueKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/ListValue$Builder;",
        "(Lcom/google/protobuf/ListValue$Builder;)V",
        "values",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Value;",
        "Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;",
        "getValues",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "_build",
        "Lcom/google/protobuf/ListValue;",
        "add",
        "",
        "value",
        "addValues",
        "addAll",
        "",
        "addAllValues",
        "clear",
        "clearValues",
        "plusAssign",
        "plusAssignValues",
        "plusAssignAllValues",
        "set",
        "index",
        "",
        "setValues",
        "Companion",
        "ValuesProxy",
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
.field public static final Companion:Lcom/google/protobuf/j0$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/ListValue$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/j0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/j0;->Companion:Lcom/google/protobuf/j0$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ListValue$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/ListValue$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/j0;-><init>(Lcom/google/protobuf/ListValue$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/ListValue;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/ListValue;

    return-object v0
.end method

.method public final synthetic addAllValues(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$b;->addAllValues(Ljava/lang/Iterable;)Lcom/google/protobuf/ListValue$b;

    return-void
.end method

.method public final synthetic addValues(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Value;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$b;->addValues(Lcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$b;

    return-void
.end method

.method public final synthetic clearValues(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$b;->clearValues()Lcom/google/protobuf/ListValue$b;

    return-void
.end method

.method public final synthetic getValues()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {v1}, Lcom/google/protobuf/ListValue$b;->getValuesList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getValuesList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllValues(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Value;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Value;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j0;->addAllValues(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignValues(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Value;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Value;",
            "*>;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j0;->addValues(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Value;)V

    return-void
.end method

.method public final synthetic setValues(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Value;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/j0;->_builder:Lcom/google/protobuf/ListValue$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ListValue$b;->setValues(ILcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$b;

    return-void
.end method
