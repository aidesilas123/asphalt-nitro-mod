###### Class com.google.protobuf.v0 (com.google.protobuf.v0)
.class public final Lcom/google/protobuf/v0;
.super Ljava/lang/Object;
.source "MethodKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/v0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u001c\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 ?2\u00020\u0001:\u0002?@B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J%\u00100\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0007\u00a2\u0006\u0002\u00081J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000e04H\u0007\u00a2\u0006\u0002\u00085J\u001d\u00106\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007\u00a2\u0006\u0002\u00087J&\u00108\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\n\u00a2\u0006\u0002\u00089J,\u00108\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000e04H\u0087\n\u00a2\u0006\u0002\u0008:J.\u0010;\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\u0002\u00a2\u0006\u0002\u0008>R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000bR$\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006A"
    }
    d2 = {
        "Lcom/google/protobuf/MethodKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Method$Builder;",
        "(Lcom/google/protobuf/Method$Builder;)V",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "options",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/MethodKt$Dsl$OptionsProxy;",
        "getOptions",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "",
        "requestStreaming",
        "getRequestStreaming",
        "()Z",
        "setRequestStreaming",
        "(Z)V",
        "requestTypeUrl",
        "getRequestTypeUrl",
        "setRequestTypeUrl",
        "responseStreaming",
        "getResponseStreaming",
        "setResponseStreaming",
        "responseTypeUrl",
        "getResponseTypeUrl",
        "setResponseTypeUrl",
        "Lcom/google/protobuf/Syntax;",
        "syntax",
        "getSyntax",
        "()Lcom/google/protobuf/Syntax;",
        "setSyntax",
        "(Lcom/google/protobuf/Syntax;)V",
        "_build",
        "Lcom/google/protobuf/Method;",
        "clearName",
        "",
        "clearRequestStreaming",
        "clearRequestTypeUrl",
        "clearResponseStreaming",
        "clearResponseTypeUrl",
        "clearSyntax",
        "add",
        "addOptions",
        "addAll",
        "values",
        "",
        "addAllOptions",
        "clear",
        "clearOptions",
        "plusAssign",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "set",
        "index",
        "",
        "setOptions",
        "Companion",
        "OptionsProxy",
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
.field public static final Companion:Lcom/google/protobuf/v0$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Method$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/v0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/v0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/v0;->Companion:Lcom/google/protobuf/v0$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Method$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Method$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0;-><init>(Lcom/google/protobuf/Method$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Method;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Method$b;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Method$b;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearName()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Method$b;->clearOptions()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearRequestStreaming()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearRequestStreaming()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearRequestTypeUrl()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearRequestTypeUrl()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearResponseStreaming()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearResponseStreaming()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearResponseTypeUrl()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearResponseTypeUrl()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->clearSyntax()Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Method$b;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getRequestStreaming()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public final getRequestTypeUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getRequestTypeUrl()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getResponseStreaming()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public final getResponseTypeUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getResponseTypeUrl()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Method$b;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Option;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v0;->addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Option;",
            "*>;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v0;->addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Method$b;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final setRequestStreaming(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setRequestStreaming(Z)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final setRequestTypeUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setRequestTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final setResponseStreaming(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setResponseStreaming(Z)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final setResponseTypeUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setResponseTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Method$b;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/v0;->_builder:Lcom/google/protobuf/Method$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method$b;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Method$b;

    return-void
.end method
