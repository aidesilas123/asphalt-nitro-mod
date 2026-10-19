###### Class com.bytedance.sdk.component.utils.u (com.bytedance.sdk.component.utils.u)
.class public Lcom/bytedance/sdk/component/utils/u;
.super Ljava/lang/Object;
.source "TTAppInfoUtils.java"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/u;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/bytedance/sdk/component/utils/u;->a:Ljava/lang/String;

    return-object v0

    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/component/utils/u;->a:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/component/utils/u;->a:Ljava/lang/String;

    return-object v0
.end method
