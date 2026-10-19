###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper.AnonymousClass1 (com.gameloft.GLSocialLib.GameAPI.GameHelper$1)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->onStart(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void
.end method
