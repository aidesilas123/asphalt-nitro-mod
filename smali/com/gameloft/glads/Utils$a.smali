###### Class com.gameloft.glads.Utils.a (com.gameloft.glads.Utils$a)
.class Lcom/gameloft/glads/Utils$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/Utils;->SetOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/glads/Utils$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget v0, Lcom/gameloft/glads/Utils;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lcom/gameloft/glads/Utils;->c:I

    :cond_f
    iget v0, p0, Lcom/gameloft/glads/Utils$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_34

    :cond_1d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_34

    :cond_29
    if-nez v0, :cond_34

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_34
    :goto_34
    return-void
.end method
