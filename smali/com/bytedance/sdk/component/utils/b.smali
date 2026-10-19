###### Class com.bytedance.sdk.component.utils.b (com.bytedance.sdk.component.utils.b)
.class public Lcom/bytedance/sdk/component/utils/b;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_f

    check-cast v1, Landroid/app/Activity;

    return-object v1

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_20

    return-object v0

    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_27

    return-object v0

    :cond_27
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2e

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_2e
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3f

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3f

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_3f
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    :cond_6
    :try_start_6
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_f

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/component/utils/b$a;->a()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :catchall_19
    move-exception p0

    if-eqz p2, :cond_1f

    invoke-interface {p2, p0}, Lcom/bytedance/sdk/component/utils/b$a;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return v0
.end method

###### Class com.bytedance.sdk.component.utils.b.a (com.bytedance.sdk.component.utils.b$a)
.class public interface abstract Lcom/bytedance/sdk/component/utils/b$a;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method
