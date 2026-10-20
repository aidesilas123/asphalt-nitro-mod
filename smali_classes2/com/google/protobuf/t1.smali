###### Class com.google.protobuf.t1 (com.google.protobuf.t1)
.class public final Lcom/google/protobuf/t1;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/t1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 H2\u00020\u0001:\u0004HIJKB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010%\u001a\u00020&H\u0001J\u0006\u0010\'\u001a\u00020(J\u0006\u0010)\u001a\u00020(J\u0006\u0010*\u001a\u00020(J\u0006\u0010+\u001a\u00020,J%\u0010-\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000b\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008.J%\u0010-\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u0006\u0010\u000b\u001a\u00020\u0016H\u0007\u00a2\u0006\u0002\u0008/J%\u0010-\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u00080J+\u00101\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000703H\u0007\u00a2\u0006\u0002\u00084J+\u00101\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001603H\u0007\u00a2\u0006\u0002\u00085J+\u00101\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000c03H\u0007\u00a2\u0006\u0002\u00086J\u001d\u00107\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u00088J\u001d\u00107\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0006H\u0007\u00a2\u0006\u0002\u00089J\u001d\u00107\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u0006H\u0007\u00a2\u0006\u0002\u0008:J&\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008<J,\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000703H\u0087\n\u00a2\u0006\u0002\u0008=J&\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u0006\u0010\u000b\u001a\u00020\u0016H\u0087\n\u00a2\u0006\u0002\u0008>J,\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001603H\u0087\n\u00a2\u0006\u0002\u0008?J&\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0087\n\u00a2\u0006\u0002\u0008@J,\u0010;\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000c03H\u0087\n\u00a2\u0006\u0002\u0008AJ.\u0010B\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010C\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008EJ.\u0010B\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u0006\u0010C\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\u0016H\u0087\u0002\u00a2\u0006\u0002\u0008FJ.\u0010B\u001a\u00020(*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00062\u0006\u0010C\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008GR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\nR$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u00198G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u001f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006L"
    }
    d2 = {
        "Lcom/google/protobuf/TypeKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Type$Builder;",
        "(Lcom/google/protobuf/Type$Builder;)V",
        "fields",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Field;",
        "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
        "getFields",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "oneofs",
        "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
        "getOneofs",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
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
        "Lcom/google/protobuf/Type;",
        "clearName",
        "",
        "clearSourceContext",
        "clearSyntax",
        "hasSourceContext",
        "",
        "add",
        "addFields",
        "addOptions",
        "addOneofs",
        "addAll",
        "values",
        "",
        "addAllFields",
        "addAllOptions",
        "addAllOneofs",
        "clear",
        "clearFields",
        "clearOptions",
        "clearOneofs",
        "plusAssign",
        "plusAssignFields",
        "plusAssignAllFields",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "plusAssignOneofs",
        "plusAssignAllOneofs",
        "set",
        "index",
        "",
        "setFields",
        "setOptions",
        "setOneofs",
        "Companion",
        "FieldsProxy",
        "OneofsProxy",
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
.field public static final Companion:Lcom/google/protobuf/t1$a;


# instance fields
.field private final _builder:Lcom/google/protobuf/Type$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/t1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/t1$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/google/protobuf/t1;->Companion:Lcom/google/protobuf/t1$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Type$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Type$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/t1;-><init>(Lcom/google/protobuf/Type$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Type;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public final synthetic addAllFields(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addAllFields(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic addAllOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addAllOneofs(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic addFields(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Field;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addFields(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic addOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addOneofs(Ljava/lang/String;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$b;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$b;->clearFields()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final clearName()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->clearName()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic clearOneofs(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$b;->clearOneofs()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/a;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$b;->clearOptions()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final clearSourceContext()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->clearSourceContext()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->clearSyntax()Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic getFields()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$b;->getFieldsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getFieldsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOneofs()Lcom/google/protobuf/kotlin/a;
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

    iget-object v1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$b;->getOneofsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOneofsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$b;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasSourceContext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$b;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllFields(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Field;",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Field;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addAllFields(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addAllOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addAllOptions(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignFields(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Field;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/a<",
            "Lcom/google/protobuf/Field;",
            "*>;",
            "Lcom/google/protobuf/Field;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addFields(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Field;)V

    return-void
.end method

.method public final synthetic plusAssignOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addOneofs(Lcom/google/protobuf/kotlin/a;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1;->addOptions(Lcom/google/protobuf/kotlin/a;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Field;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$b;->setFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$b;->setName(Ljava/lang/String;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic setOneofs(Lcom/google/protobuf/kotlin/a;ILjava/lang/String;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$b;->setOneofs(ILjava/lang/String;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/a;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$b;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$b;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$b;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/t1;->_builder:Lcom/google/protobuf/Type$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$b;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Type$b;

    return-void
.end method
