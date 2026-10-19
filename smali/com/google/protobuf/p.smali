###### Class com.google.protobuf.p (com.google.protobuf.p)
.class public final Lcom/google/protobuf/p;
.super Ljava/lang/Object;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/p$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u001c\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 ?2\u00020\u0001:\u0003?@AB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\"\u001a\u00020#H\u0001J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020)J%\u0010*\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000b\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008+J%\u0010*\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00062\u0006\u0010\u000b\u001a\u00020\u0013H\u0007\u00a2\u0006\u0002\u0008,J+\u0010-\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00070/H\u0007\u00a2\u0006\u0002\u00080J+\u0010-\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00130/H\u0007\u00a2\u0006\u0002\u00081J\u001d\u00102\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u00083J\u001d\u00102\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0006H\u0007\u00a2\u0006\u0002\u00084J&\u00105\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u00086J,\u00105\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00070/H\u0087\n\u00a2\u0006\u0002\u00087J&\u00105\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00062\u0006\u0010\u000b\u001a\u00020\u0013H\u0087\n\u00a2\u0006\u0002\u00088J,\u00105\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00130/H\u0087\n\u00a2\u0006\u0002\u00089J.\u0010:\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010;\u001a\u00020<2\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008=J.\u0010:\u001a\u00020%*\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00062\u0006\u0010;\u001a\u00020<2\u0006\u0010\u000b\u001a\u00020\u0013H\u0087\u0002\u00a2\u0006\u0002\u0008>R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\nR$\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00168G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u001c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006B"
    }
    d2 = {
        "Lcom/google/protobuf/EnumKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Enum$Builder;",
        "(Lcom/google/protobuf/Enum$Builder;)V",
        "enumvalue",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/EnumValue;",
        "Lcom/google/protobuf/EnumKt$Dsl$EnumvalueProxy;",
        "getEnumvalue",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/EnumKt$Dsl$OptionsProxy;",
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
        "_build",
        "Lcom/google/protobuf/Enum;",
        "clearName",
        "",
        "clearSourceContext",
        "clearSyntax",
        "hasSourceContext",
        "",
        "add",
        "addEnumvalue",
        "addOptions",
        "addAll",
        "values",
        "",
        "addAllEnumvalue",
        "addAllOptions",
        "clear",
        "clearEnumvalue",
        "clearOptions",
        "plusAssign",
        "plusAssignEnumvalue",
        "plusAssignAllEnumvalue",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "set",
        "index",
        "",
        "setEnumvalue",
        "setOptions",
        "Companion",
        "EnumvalueProxy",
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
.field public static final Companion:Lcom/google/protobuf/p$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Enum$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/p$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/p;->Companion:Lcom/google/protobuf/p$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Enum$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Enum$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/p;-><init>(Lcom/google/protobuf/Enum$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Enum;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public final synthetic addAllEnumvalue(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$b;->addAllEnumvalue(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$b;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic addEnumvalue(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/EnumValue;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$b;->addEnumvalue(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$b;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic clearEnumvalue(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$b;->clearEnumvalue()Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->clearName()Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$b;->clearOptions()Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final clearSourceContext()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->clearSourceContext()Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->clearSyntax()Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic getEnumvalue()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Enum$b;->getEnumvalueList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getEnumvalueList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Enum$b;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasSourceContext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$b;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllEnumvalue(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/EnumValue;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/EnumValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/p;->addAllEnumvalue(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/p;->addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignEnumvalue(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/EnumValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/EnumValue;",
            "*>;",
            "Lcom/google/protobuf/EnumValue;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/p;->addEnumvalue(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/EnumValue;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/p;->addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final synthetic setEnumvalue(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/EnumValue;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Enum$b;->setEnumvalue(ILcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Enum$b;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$b;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/p;->_builder:Lcom/google/protobuf/Enum$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$b;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Enum$b;

    return-void
.end method

###### Class com.google.protobuf.p.Companion (com.google.protobuf.p$a)
.class public final Lcom/google/protobuf/p$a;
.super Ljava/lang/Object;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/p;
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
        "Lcom/google/protobuf/EnumKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lcom/google/protobuf/EnumKt$Dsl;",
        "builder",
        "Lcom/google/protobuf/Enum$Builder;",
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

    invoke-direct {p0}, Lcom/google/protobuf/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Enum$b;)Lcom/google/protobuf/p;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/protobuf/p;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/p;-><init>(Lcom/google/protobuf/Enum$b;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
