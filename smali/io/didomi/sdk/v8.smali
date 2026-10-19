###### Class io.didomi.drawable.C1925v8 (io.didomi.sdk.v8)
.class public final Lio/didomi/sdk/v8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lio/didomi/sdk/v8;",
        "",
        "<init>",
        "()V",
        "",
        "html",
        "a",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "string",
        "",
        "c",
        "(Ljava/lang/String;)Z",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/v8;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/v8;

    invoke-direct {v0}, Lio/didomi/sdk/v8;-><init>()V

    sput-object v0, Lio/didomi/sdk/v8;->a:Lio/didomi/sdk/v8;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "</?a[^>]*>"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lio/didomi/sdk/j5;->a:Lio/didomi/sdk/j5;

    invoke-virtual {v0}, Lio/didomi/sdk/j5;->d()Lkotlin/text/Regex;

    move-result-object v0

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lio/didomi/sdk/j5;->a:Lio/didomi/sdk/j5;

    invoke-virtual {v0}, Lio/didomi/sdk/j5;->g()Lkotlin/text/Regex;

    move-result-object v0

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
