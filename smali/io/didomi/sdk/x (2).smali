###### Class io.didomi.drawable.C1936x (io.didomi.sdk.x)
.class public final Lio/didomi/sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/x;",
        "",
        "<init>",
        "()V",
        "",
        "value",
        "",
        "c",
        "(Ljava/lang/String;)Z",
        "color",
        "a",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "colorString",
        "",
        "b",
        "(Ljava/lang/String;)I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/x;

    invoke-direct {v0}, Lio/didomi/sdk/x;-><init>()V

    sput-object v0, Lio/didomi/sdk/x;->a:Lio/didomi/sdk/x;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/RegexOption;->a:Lkotlin/text/RegexOption;

    const-string v2, "^#([0-9a-f]{6}|[0-9a-f]{3})$"

    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/x;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "#000000"

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p0, p1}, Lio/didomi/sdk/x;->b(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    cmpg-double p1, v2, v4

    if-gez p1, :cond_20

    const-string v1, "#ffffff"

    :cond_20
    return-object v1
.end method

.method public final b(Ljava/lang/String;)I
    .registers 5
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const-string v0, "colorString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/RegexOption;->a:Lkotlin/text/RegexOption;

    const-string v2, "#[0-9a-f][0-9a-f][0-9a-f]"

    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#05687b"

    if-eqz v0, :cond_24

    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "#([0-9a-fA-F])([0-9a-fA-F])([0-9a-fA-F])"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "#$1$1$2$2$3$3"

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_24
    invoke-direct {p0, p1}, Lio/didomi/sdk/x;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, p1

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    :try_start_2d
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_4c

    :catch_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing color "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_4c
    return p1
.end method
