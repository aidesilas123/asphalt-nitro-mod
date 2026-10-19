###### Class com.bytedance.sdk.component.a.s (com.bytedance.sdk.component.a.s)
.class Lcom/bytedance/sdk/component/a/s;
.super Ljava/lang/Exception;
.source "JsBridgeException.java"


# instance fields
.field a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/a/s;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/bytedance/sdk/component/a/s;->a:I

    return-void
.end method
