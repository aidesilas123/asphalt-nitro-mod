###### Class com.json.i8 (com.ironsource.i8)
.class public final Lcom/ironsource/i8;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/i8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0006B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/ironsource/i8;",
        "Landroid/webkit/WebView;",
        "Lcom/ironsource/t8;",
        "",
        "script",
        "",
        "a",
        "Lcom/ironsource/ha;",
        "listener",
        "",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "event",
        "",
        "onKeyDown",
        "Lcom/ironsource/s8;",
        "Lcom/ironsource/s8;",
        "javascriptEngine",
        "b",
        "Lcom/ironsource/ha;",
        "changeListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/ironsource/s8;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/s8;

.field private b:Lcom/ironsource/ha;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/s8;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascriptEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ironsource/i8;->a:Lcom/ironsource/s8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/ha;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/i8;->b:Lcom/ironsource/ha;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/i8;->a:Lcom/ironsource/s8;

    invoke-interface {v0}, Lcom/ironsource/s8;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ironsource/i8;->a:Lcom/ironsource/s8;

    invoke-interface {v0, p0}, Lcom/ironsource/s8;->a(Landroid/webkit/WebView;)V

    :cond_12
    iget-object v0, p0, Lcom/ironsource/i8;->a:Lcom/ironsource/s8;

    invoke-interface {v0, p1}, Lcom/ironsource/s8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/ironsource/i8;->b:Lcom/ironsource/ha;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/ironsource/ha;->onBackButtonPressed()Z

    move-result v1

    if-ne v1, v0, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_19

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1d
    return v0
.end method

###### Class com.ironsource.i8.a (com.ironsource.i8$a)
.class public final Lcom/ironsource/i8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/i8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ironsource/i8$a;",
        "",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/i8$a;

.field public static final b:Ljava/lang/String; = "IronSourceWebView"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/i8$a;

    invoke-direct {v0}, Lcom/ironsource/i8$a;-><init>()V

    sput-object v0, Lcom/ironsource/i8$a;->a:Lcom/ironsource/i8$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
