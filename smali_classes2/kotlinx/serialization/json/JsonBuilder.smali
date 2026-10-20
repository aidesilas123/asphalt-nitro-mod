###### Class kotlinx.serialization.json.JsonBuilder (kotlinx.serialization.json.JsonBuilder)
.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;
.source "Json.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u00107\u001a\u000208H\u0000\u00a2\u0006\u0002\u00089R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR$\u0010\u001a\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0008\"\u0004\u0008\u001e\u0010\nR\u001a\u0010\u001f\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0008\"\u0004\u0008!\u0010\nR\u001a\u0010\"\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0008\"\u0004\u0008#\u0010\nR\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0008\"\u0004\u0008&\u0010\nR$\u0010\'\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u001c\u001a\u0004\u0008)\u0010\u0011\"\u0004\u0008*\u0010\u0013R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0008\"\u0004\u00083\u0010\nR\u001a\u00104\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0008\"\u0004\u00086\u0010\n\u00a8\u0006:"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonBuilder;",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Lkotlinx/serialization/json/Json;)V",
        "allowSpecialFloatingPointValues",
        "",
        "getAllowSpecialFloatingPointValues",
        "()Z",
        "setAllowSpecialFloatingPointValues",
        "(Z)V",
        "allowStructuredMapKeys",
        "getAllowStructuredMapKeys",
        "setAllowStructuredMapKeys",
        "classDiscriminator",
        "",
        "getClassDiscriminator",
        "()Ljava/lang/String;",
        "setClassDiscriminator",
        "(Ljava/lang/String;)V",
        "coerceInputValues",
        "getCoerceInputValues",
        "setCoerceInputValues",
        "encodeDefaults",
        "getEncodeDefaults",
        "setEncodeDefaults",
        "explicitNulls",
        "getExplicitNulls$annotations",
        "()V",
        "getExplicitNulls",
        "setExplicitNulls",
        "ignoreUnknownKeys",
        "getIgnoreUnknownKeys",
        "setIgnoreUnknownKeys",
        "isLenient",
        "setLenient",
        "prettyPrint",
        "getPrettyPrint",
        "setPrettyPrint",
        "prettyPrintIndent",
        "getPrettyPrintIndent$annotations",
        "getPrettyPrintIndent",
        "setPrettyPrintIndent",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "setSerializersModule",
        "(Lkotlinx/serialization/modules/SerializersModule;)V",
        "useAlternativeNames",
        "getUseAlternativeNames",
        "setUseAlternativeNames",
        "useArrayPolymorphism",
        "getUseArrayPolymorphism",
        "setUseArrayPolymorphism",
        "build",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "build$kotlinx_serialization_json",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .registers 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->e()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->a:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->f()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->b:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->g()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->c:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->d:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->b()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->h()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->f:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->d()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->h:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->k()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->i:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->a()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->k:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->j()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->l:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->m:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method

.method public static synthetic getExplicitNulls$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPrettyPrintIndent$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/json/JsonConfiguration;
    .registers 16

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->i:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->j:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1b

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->f:Z

    const-string v1, "    "

    if-nez v0, :cond_36

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_86

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_42
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_65

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x9

    if-eq v3, v5, :cond_5f

    const/16 v5, 0xd

    if-eq v3, v5, :cond_5f

    const/16 v5, 0xa

    if-ne v3, v5, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x0

    :cond_5f
    :goto_5f
    if-nez v4, :cond_62

    goto :goto_66

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_65
    const/4 v1, 0x1

    :goto_66
    if-eqz v1, :cond_69

    goto :goto_86

    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_86
    :goto_86
    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v3, p0, Lkotlinx/serialization/json/JsonBuilder;->a:Z

    iget-boolean v4, p0, Lkotlinx/serialization/json/JsonBuilder;->c:Z

    iget-boolean v5, p0, Lkotlinx/serialization/json/JsonBuilder;->d:Z

    iget-boolean v6, p0, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    iget-boolean v7, p0, Lkotlinx/serialization/json/JsonBuilder;->f:Z

    iget-boolean v8, p0, Lkotlinx/serialization/json/JsonBuilder;->b:Z

    iget-object v9, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Ljava/lang/String;

    iget-boolean v10, p0, Lkotlinx/serialization/json/JsonBuilder;->h:Z

    iget-boolean v11, p0, Lkotlinx/serialization/json/JsonBuilder;->i:Z

    iget-object v12, p0, Lkotlinx/serialization/json/JsonBuilder;->j:Ljava/lang/String;

    iget-boolean v13, p0, Lkotlinx/serialization/json/JsonBuilder;->k:Z

    iget-boolean v14, p0, Lkotlinx/serialization/json/JsonBuilder;->l:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public final b()Lkotlinx/serialization/modules/SerializersModule;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->m:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->a:Z

    return-void
.end method

.method public final e(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->b:Z

    return-void
.end method

.method public final f(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->c:Z

    return-void
.end method
