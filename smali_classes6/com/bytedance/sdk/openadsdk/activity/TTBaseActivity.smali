###### Class com.bytedance.sdk.openadsdk.activity.TTBaseActivity (com.bytedance.sdk.openadsdk.activity.TTBaseActivity)
.class public Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.super Landroid/app/Activity;
.source "TTBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2f

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2f

    :try_start_a
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_32

    :catch_e
    move-exception v0

    const-string v1, "TTBaseActivity"

    const-string v2, "super.onResume() run fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_16
    const-class v0, Landroid/app/Activity;

    const-string v2, "mCalled"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_32

    :catch_28
    move-exception v0

    const-string v2, "onResume set mCalled fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_2f
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :goto_32
    return-void
.end method
