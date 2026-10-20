###### Class com.mbridge.msdk.activity.MBBaseActivity.AnonymousClass2 (com.mbridge.msdk.activity.MBBaseActivity$2)
.class final Lcom/mbridge/msdk/activity/MBBaseActivity$2;
.super Landroid/view/OrientationEventListener;
.source "MBBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/activity/MBBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/activity/MBBaseActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/activity/MBBaseActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .registers 6

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const/4 v0, 0x1

    const-string v1, "MBBaseActivity"

    if-ne p1, v0, :cond_31

    iget-object v2, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v2}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v2

    if-eq v2, v0, :cond_31

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Left"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v0, 0x2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4d

    iget-object v3, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v3}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v3

    if-eq v3, v0, :cond_4d

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Right"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    if-nez p1, :cond_67

    iget-object v3, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v3}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v3

    if-eq v3, v2, :cond_67

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v2}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Top"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    if-ne p1, v0, :cond_81

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_81

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lcom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    const-string p1, "Orientation Bottom"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    return-void
.end method
