###### Class com.fyber.inneractive.sdk.interfaces.c (com.fyber.inneractive.sdk.interfaces.c)
.class public interface abstract Lcom/fyber/inneractive/sdk/interfaces/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/interfaces/c$a;,
        Lcom/fyber/inneractive/sdk/interfaces/c$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/fyber/inneractive/sdk/interfaces/c$a;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/interfaces/c$b;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract m()V
.end method

.method public abstract o()V
.end method

.method public abstract t()V
.end method

.method public abstract v()Z
.end method

###### Class com.fyber.inneractive.sdk.interfaces.c.a (com.fyber.inneractive.sdk.interfaces.c$a)
.class public interface abstract Lcom/fyber/inneractive/sdk/interfaces/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/interfaces/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract disableCloseButton()V
.end method

.method public abstract dismissAd(Z)V
.end method

.method public abstract getCloseButton()Landroid/view/View;
.end method

.method public abstract getLayout()Landroid/view/ViewGroup;
.end method

.method public abstract isCloseButtonDisplay()Z
.end method

.method public abstract secondEndCardWasDisplayed()V
.end method

.method public abstract setActivityOrientation(ZLcom/fyber/inneractive/sdk/config/enums/Orientation;)V
.end method

.method public abstract showCloseButton(ZII)V
.end method

.method public abstract showCloseCountdown()V
.end method

.method public abstract updateCloseCountdown(I)V
.end method

.method public abstract wasDismissedByUser()Z
.end method

###### Class com.fyber.inneractive.sdk.interfaces.c.b (com.fyber.inneractive.sdk.interfaces.c$b)
.class public interface abstract Lcom/fyber/inneractive/sdk/interfaces/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/interfaces/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation
