###### Class com.hyprmx.android.sdk.overlay.j (com.hyprmx.android.sdk.overlay.j)
.class public final Lcom/hyprmx/android/sdk/overlay/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/overlay/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/overlay/j$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lcom/hyprmx/android/sdk/calendar/a;

.field public final c:Z

.field public d:Z

.field public e:Lcom/hyprmx/android/sdk/overlay/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/calendar/a;Z)V
    .registers 5

    const-string v0, "calendarEventController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/overlay/j;->b:Lcom/hyprmx/android/sdk/calendar/a;

    iput-boolean p3, p0, Lcom/hyprmx/android/sdk/overlay/j;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZI)V
    .registers 6

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object p1, v1

    :cond_6
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_f

    new-instance v1, Lcom/hyprmx/android/sdk/calendar/a;

    invoke-direct {v1}, Lcom/hyprmx/android/sdk/calendar/a;-><init>()V

    :cond_f
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_14

    const/4 p2, 0x0

    :cond_14
    invoke-direct {p0, p1, v1, p2}, Lcom/hyprmx/android/sdk/overlay/j;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/calendar/a;Z)V

    return-void
.end method


# virtual methods
.method public final asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_7

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_7
    sget-object v1, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/b;->H()Lcom/hyprmx/android/sdk/utility/n0;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_25

    invoke-interface {v1, v0, p1, p2}, Lcom/hyprmx/android/sdk/utility/n0;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_22

    return-object p1

    :cond_22
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_25
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final createCalendarEvent(Ljava/lang/String;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/j;->b:Lcom/hyprmx/android/sdk/calendar/a;

    invoke-virtual {v1, v0, p1}, Lcom/hyprmx/android/sdk/calendar/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/j$a;->onOutsideAppPresented()V

    :cond_19
    return-void
.end method

.method public final hyprMXBrowserClosed()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/overlay/j$a;->onHyprMXBrowserClosed()V

    :cond_7
    return-void
.end method

.method public final openOutsideApplication(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/utility/a1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/j$a;->onOutsideAppPresented()V

    :cond_17
    return-void
.end method

.method public final openShareSheet(Ljava/lang/String;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/j$a;->onOutsideAppPresented()V

    :cond_2d
    return-void
.end method

.method public final setOverlayPresented(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    return-void
.end method

.method public final showHyprMXBrowser(Ljava/lang/String;)V
    .registers 6

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-object v1, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    if-nez v1, :cond_1c

    return-void

    :cond_1c
    iget-boolean v3, p0, Lcom/hyprmx/android/sdk/overlay/j;->c:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    if-eqz v3, :cond_2a

    const-string p1, "HyprMX Overlay already presented."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-interface {v1, v2, p1}, Lcom/hyprmx/android/sdk/presentation/j;->a(Lcom/hyprmx/android/sdk/overlay/g;Ljava/lang/String;)Lcom/hyprmx/android/sdk/overlay/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    return-void

    :cond_35
    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/overlay/f;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/hyprmx/android/sdk/overlay/j$b;

    invoke-direct {v2, p0}, Lcom/hyprmx/android/sdk/overlay/j$b;-><init>(Lcom/hyprmx/android/sdk/overlay/j;)V

    invoke-interface {p1, v2}, Lcom/hyprmx/android/sdk/overlay/f;->a(Lcom/hyprmx/android/sdk/overlay/j$b;)V

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->b()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "baseAdId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_54
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->r()Lcom/hyprmx/android/sdk/overlay/m;

    move-result-object p1

    if-eqz p1, :cond_66

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/m;->a()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    const-string p1, "Could not launch activity"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public final showPlatformBrowser(Ljava/lang/String;)V
    .registers 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/overlay/j;->c:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    if-eqz v1, :cond_18

    const-string p1, "HyprMX Overlay already presented."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_26
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_31

    iget-object v2, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/j$a;->onOutsideAppPresented()V

    :cond_3f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z
    :try_end_42
    .catch Landroid/content/ActivityNotFoundException; {:try_start_26 .. :try_end_42} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_43

    goto :goto_62

    :catch_43
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not launch custom tab: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :catch_4c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find custom tab activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_62
    return-void
.end method

.method public final showToast(I)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final storePicture(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
