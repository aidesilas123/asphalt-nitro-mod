###### Class com.tapjoy.TJAdUnitActivity (com.tapjoy.TJAdUnitActivity)
.class public Lcom/tapjoy/TJAdUnitActivity;
.super Lcom/tapjoy/TJActivity;
.source "SourceFile"


# static fields
.field public static f:Lcom/tapjoy/TJAdUnitActivity;


# instance fields
.field public final g:Landroid/os/Handler;

.field public h:Lcom/tapjoy/TJAdUnit;

.field public i:Lcom/tapjoy/w;

.field public j:Lcom/tapjoy/l;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/tapjoy/TJActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/l;

    invoke-direct {v0}, Lcom/tapjoy/l;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->k:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->l:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->e(Z)V

    return-void
.end method

.method public final e(Z)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->f()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "TJAdUnitActivity"

    const-string v1, "closeRequested"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnit;->a(Z)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/internal/z0;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/z0;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    :cond_23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {v0}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJMemoryDataStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public final f()V
    .registers 5

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnitActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->k:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->b()V

    :cond_d
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/tapjoy/w;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {v0}, Lcom/tapjoy/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {v0}, Lcom/tapjoy/w;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/o;

    move-result-object v0

    if-eqz v0, :cond_79

    sget-boolean v1, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-boolean v2, p0, Lcom/tapjoy/TJAdUnitActivity;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkCloseBtn"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object v2

    const-string v3, "dismiss"

    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/internal/i8;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_4b
    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    if-eqz v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content dismissed for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v0}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TJCorePlacement"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_79

    invoke-interface {v0, v1}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    :cond_79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitActivity;->e(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->r()V

    :cond_a
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TJAdUnitActivity onCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitActivity"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tapjoy/TJActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_33

    const-string v0, "ad_unit_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/l;

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    if-eqz p1, :cond_33

    iget-boolean p1, p1, Lcom/tapjoy/l;->b:Z

    if-eqz p1, :cond_33

    const-string p1, "finishing TJAdUnitActivity"

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    const-string v2, "placement_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_45
    move-object p1, v0

    :goto_46
    if-eqz p1, :cond_53

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tapjoy/TJMemoryDataStorage;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/w;

    goto :goto_54

    :cond_53
    move-object p1, v0

    :goto_54
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    if-nez p1, :cond_68

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "Failed to launch AdUnit Activity"

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_68
    invoke-virtual {p1}, Lcom/tapjoy/w;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1}, Lcom/tapjoy/w;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    :cond_78
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1}, Lcom/tapjoy/w;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/o;

    move-result-object p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1}, Lcom/tapjoy/w;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/o;->h()Lcom/tapjoy/TJAdUnit;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    goto :goto_9c

    :cond_95
    new-instance p1, Lcom/tapjoy/TJAdUnit;

    invoke-direct {p1}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    :goto_9c
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->n()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_b1

    const-string p1, "No content loaded for ad unit -- loading now"

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1, v4, v3, p0}, Lcom/tapjoy/TJAdUnit;->q(Lcom/tapjoy/w;ZLandroid/content/Context;)V

    :cond_b1
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJAdUnit;->w(Lcom/tapjoy/TJAdUnitActivity;)V

    :try_start_b6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_176

    :try_start_ba
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ba .. :try_end_c2} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c2} :catch_176

    goto :goto_ce

    :catch_c3
    move-exception p1

    :try_start_c4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v4, "TJDevice"

    invoke-static {v4, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_ce
    const/4 v4, -0x1

    if-eqz p1, :cond_db

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, p1

    if-lez v5, :cond_db

    aget-object p1, p1, v3

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_dc

    :cond_db
    const/4 p1, -0x1

    :goto_dc
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->e()Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/tapjoy/TJActivity;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_f9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f9
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnit;->m()Lcom/tapjoy/TJWebView;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/TJActivity;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_113

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_113
    iget-object v6, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v6}, Lcom/tapjoy/TJAdUnit;->k()Landroid/widget/VideoView;

    move-result-object v6

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_12d

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12d
    iget-object v8, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x11

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1}, Lcom/tapjoy/w;->m()Z

    move-result p1

    if-eqz p1, :cond_15a

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJActivity;->c(Z)V

    goto :goto_15d

    :cond_15a
    invoke-virtual {p0, v3}, Lcom/tapjoy/TJActivity;->c(Z)V

    :goto_15d
    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tapjoy/TJActivity;->c:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1, v2}, Lcom/tapjoy/TJAdUnit;->z(Z)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_175} :catch_176

    goto :goto_17e

    :catch_176
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17e
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    invoke-virtual {p1}, Lcom/tapjoy/w;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/o;

    move-result-object p1

    if-eqz p1, :cond_1c7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content shown for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJCorePlacement"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SHOW"

    invoke-virtual {p1, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    if-eqz p1, :cond_1b8

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_1b8

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    :cond_1b8
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    move-result-object p1

    if-nez p1, :cond_1c1

    goto :goto_1c7

    :cond_1c1
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    throw v0

    :cond_1c7
    :goto_1c7
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    iget-object v0, p1, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->k:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->f()V

    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnitActivity;

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "TJAdUnitActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->s()V

    goto :goto_15

    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_15
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/w;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/tapjoy/w;->D()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "is Finishing"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->f()V

    :cond_2d
    return-void
.end method

.method public final onResume()V
    .registers 3

    const-string v0, "TJAdUnitActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->v(Lcom/tapjoy/l;)V

    :cond_13
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TJAdUnitActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->j()I

    move-result v0

    iput v0, v1, Lcom/tapjoy/l;->a:I

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->p()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/l;->b:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->o()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/l;->c:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Lcom/tapjoy/l;

    const-string v1, "ad_unit_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_31
    return-void
.end method

.method public final onStart()V
    .registers 3

    invoke-super {p0}, Lcom/tapjoy/TJActivity;->onStart()V

    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .registers 3

    invoke-super {p0}, Lcom/tapjoy/TJActivity;->onStop()V

    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
