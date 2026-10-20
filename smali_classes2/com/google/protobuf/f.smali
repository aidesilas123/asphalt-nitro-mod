###### Class com.google.protobuf.f (com.google.protobuf.f)
.class public final Lcom/google/protobuf/f;
.super Ljava/lang/Object;
.source "ApiKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 M2\u00020\u0001:\u0004MNOPB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010)\u001a\u00020*H\u0001J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020,J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u000201J%\u00102\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00083J%\u00102\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010\u000f\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u00084J%\u00102\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010\u000f\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u00085J+\u00106\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000708H\u0007\u00a2\u0006\u0002\u00089J+\u00106\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000c08H\u0007\u00a2\u0006\u0002\u0008:J+\u00106\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001708H\u0007\u00a2\u0006\u0002\u0008;J\u001d\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u0008=J\u001d\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u0006H\u0007\u00a2\u0006\u0002\u0008>J\u001d\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0006H\u0007\u00a2\u0006\u0002\u0008?J&\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008AJ,\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000708H\u0087\n\u00a2\u0006\u0002\u0008BJ&\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010\u000f\u001a\u00020\u000cH\u0087\n\u00a2\u0006\u0002\u0008CJ,\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000c08H\u0087\n\u00a2\u0006\u0002\u0008DJ&\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010\u000f\u001a\u00020\u0017H\u0087\n\u00a2\u0006\u0002\u0008EJ,\u0010@\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001708H\u0087\n\u00a2\u0006\u0002\u0008FJ.\u0010G\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010H\u001a\u00020I2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008JJ.\u0010G\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010H\u001a\u00020I2\u0006\u0010\u000f\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008KJ.\u0010G\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010H\u001a\u00020I2\u0006\u0010\u000f\u001a\u00020\u0017H\u0087\u0002\u00a2\u0006\u0002\u0008LR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\nR$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001a8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010!\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020 8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010&\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\u0013\"\u0004\u0008(\u0010\u0015\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/google/protobuf/ApiKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Api$Builder;",
        "(Lcom/google/protobuf/Api$Builder;)V",
        "methods",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Method;",
        "Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;",
        "getMethods",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "mixins",
        "Lcom/google/protobuf/Mixin;",
        "Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;",
        "getMixins",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;",
        "getOptions",
        "Lcom/google/protobuf/SourceContext;",
        "sourceContext",
        "getSourceContext",
        "()Lcom/google/protobuf/SourceContext;",
        "setSourceContext",
        "(Lcom/google/protobuf/SourceContext;)V",
        "Lcom/google/protobuf/Syntax;",
        "syntax",
        "getSyntax",
        "()Lcom/google/protobuf/Syntax;",
        "setSyntax",
        "(Lcom/google/protobuf/Syntax;)V",
        "version",
        "getVersion",
        "setVersion",
        "_build",
        "Lcom/google/protobuf/Api;",
        "clearName",
        "",
        "clearSourceContext",
        "clearSyntax",
        "clearVersion",
        "hasSourceContext",
        "",
        "add",
        "addMethods",
        "addMixins",
        "addOptions",
        "addAll",
        "values",
        "",
        "addAllMethods",
        "addAllMixins",
        "addAllOptions",
        "clear",
        "clearMethods",
        "clearMixins",
        "clearOptions",
        "plusAssign",
        "plusAssignMethods",
        "plusAssignAllMethods",
        "plusAssignMixins",
        "plusAssignAllMixins",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "set",
        "index",
        "",
        "setMethods",
        "setMixins",
        "setOptions",
        "Companion",
        "MethodsProxy",
        "MixinsProxy",
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
.field public static final Companion:Lcom/google/protobuf/f$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Api$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/f;->Companion:Lcom/google/protobuf/f$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Api$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Api$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/f;-><init>(Lcom/google/protobuf/Api$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Api;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public final synthetic addAllMethods(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addAllMethods(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic addAllMixins(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addAllMixins(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic addMethods(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Method;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addMethods(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic addMixins(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Mixin;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addMixins(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$b;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic clearMethods(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$b;->clearMethods()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic clearMixins(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$b;->clearMixins()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->clearName()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$b;->clearOptions()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final clearSourceContext()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->clearSourceContext()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->clearSyntax()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final clearVersion()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->clearVersion()Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic getMethods()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Api$b;->getMethodsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getMethodsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getMixins()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Api$b;->getMixinsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getMixinsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Api$b;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getVersion()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasSourceContext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Api$b;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllMethods(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Method;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Method;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addAllMethods(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllMixins(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Mixin;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Mixin;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addAllMixins(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignMethods(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Method;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Method;",
            "*>;",
            "Lcom/google/protobuf/Method;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addMethods(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Method;)V

    return-void
.end method

.method public final synthetic plusAssignMixins(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Mixin;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Mixin;",
            "*>;",
            "Lcom/google/protobuf/Mixin;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addMixins(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Mixin;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f;->addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final synthetic setMethods(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Method;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$b;->setMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic setMixins(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Mixin;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$b;->setMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$b;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$b;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$b;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Api$b;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/f;->_builder:Lcom/google/protobuf/Api$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$b;->setVersion(Ljava/lang/String;)Lcom/google/protobuf/Api$b;

    return-void
.end method
