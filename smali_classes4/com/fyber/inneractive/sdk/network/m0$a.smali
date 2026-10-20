###### Class com.fyber.inneractive.sdk.network.m0.a (com.fyber.inneractive.sdk.network.m0$a)
.class public Lcom/fyber/inneractive/sdk/network/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/m0$a;->a:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/m0$a;->b:Ljava/lang/String;

    return-void
.end method
