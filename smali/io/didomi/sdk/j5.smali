###### Class io.didomi.drawable.C1802j5 (io.didomi.sdk.j5)
.class public final Lio/didomi/sdk/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0017\u0010\r\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0006\u001a\u0004\u0008\u0005\u0010\u0008R\u0017\u0010\u0012\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\u0008R\u0017\u0010\u0014\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0006\u001a\u0004\u0008\u0013\u0010\u0008R\u0017\u0010\u0016\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0006\u001a\u0004\u0008\u0015\u0010\u0008R\u0017\u0010\u0017\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u0017\u0010\u0019\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u0017\u0010\u001b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0006\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/didomi/sdk/j5;",
        "",
        "<init>",
        "()V",
        "Lkotlin/text/Regex;",
        "b",
        "Lkotlin/text/Regex;",
        "c",
        "()Lkotlin/text/Regex;",
        "LOCALE_SEPARATOR",
        "d",
        "LOCALE_STRING",
        "g",
        "TWO_LETTERS",
        "e",
        "LI_OPENING_TAG",
        "f",
        "a",
        "LI_CLOSING_TAG",
        "i",
        "UL_OPENING_TAG",
        "h",
        "UL_CLOSING_TAG",
        "OL_OPENING_TAG",
        "j",
        "OL_CLOSING_TAG",
        "k",
        "UUID",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/j5;

.field private static final b:Lkotlin/text/Regex;

.field private static final c:Lkotlin/text/Regex;

.field private static final d:Lkotlin/text/Regex;

.field private static final e:Lkotlin/text/Regex;

.field private static final f:Lkotlin/text/Regex;

.field private static final g:Lkotlin/text/Regex;

.field private static final h:Lkotlin/text/Regex;

.field private static final i:Lkotlin/text/Regex;

.field private static final j:Lkotlin/text/Regex;

.field private static final k:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/j5;

    invoke-direct {v0}, Lio/didomi/sdk/j5;-><init>()V

    sput-object v0, Lio/didomi/sdk/j5;->a:Lio/didomi/sdk/j5;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[_-]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->b:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/RegexOption;->a:Lkotlin/text/RegexOption;

    const-string v2, "^[a-z]{2,3}[_-][A-Z]{2}|[a-z]{2,3}$"

    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    sput-object v0, Lio/didomi/sdk/j5;->c:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[A-Za-z]{2}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->d:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*li[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->e:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*/\\s*li[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->f:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*ul[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->g:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*/\\s*ul[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->h:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*ol[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->i:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)<\\s*/\\s*ol[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->j:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/j5;->k:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->f:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final b()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->e:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final c()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->b:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final d()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->c:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final e()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->j:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final f()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->i:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final g()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->d:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final h()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->h:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final i()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->g:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final j()Lkotlin/text/Regex;
    .registers 2

    sget-object v0, Lio/didomi/sdk/j5;->k:Lkotlin/text/Regex;

    return-object v0
.end method
