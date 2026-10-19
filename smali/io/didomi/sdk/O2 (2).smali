###### Class io.didomi.drawable.O2 (io.didomi.sdk.O2)
.class public final Lio/didomi/sdk/O2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/L3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000b\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0006\u001a\u0004\u0008\n\u0010\u0008R\u001a\u0010\r\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0006\u001a\u0004\u0008\u0005\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/O2;",
        "Lio/didomi/sdk/L3;",
        "<init>",
        "()V",
        "",
        "b",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "contentTextTranslationKey",
        "d",
        "titleTranslationKey",
        "a",
        "agreeTranslationKey",
        "e",
        "learnMoreTranslationKey",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/O2;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/O2;

    invoke-direct {v0}, Lio/didomi/sdk/O2;-><init>()V

    sput-object v0, Lio/didomi/sdk/O2;->a:Lio/didomi/sdk/O2;

    const-string v0, "notice_banner_message"

    sput-object v0, Lio/didomi/sdk/O2;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lio/didomi/sdk/O2;->c:Ljava/lang/String;

    const-string v0, "agree_close_ea00d5ff"

    sput-object v0, Lio/didomi/sdk/O2;->d:Ljava/lang/String;

    const-string v0, "learn_more_7a8d626"

    sput-object v0, Lio/didomi/sdk/O2;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/sdk/O2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/sdk/O2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/sdk/O2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/sdk/O2;->c:Ljava/lang/String;

    return-object v0
.end method
