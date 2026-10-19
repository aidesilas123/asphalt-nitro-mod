###### Class com.gameloft.GLSocialLib.GameAPI.RestManager (com.gameloft.GLSocialLib.GameAPI.RestManager)
.class public Lcom/gameloft/GLSocialLib/GameAPI/RestManager;
.super Ljava/lang/Object;
.source "RestManager.java"

# interfaces
.implements Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;
    }
.end annotation


# static fields
.field private static final CLIENT_ID:Ljava/lang/String;

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final RETRY_COUNT:I = 0xa

.field public static final SIMPLE_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/games https://www.googleapis.com/auth/plus.login"

.field private static final TAG:Ljava/lang/String; = "RestManager"


# instance fields
.field private authToken:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mManager:Landroid/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120268

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apps.googleusercontent.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->authToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->mContext:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getRest(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->authToken:Ljava/lang/String;

    new-instance p2, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;

    invoke-direct {p2, p0, p0}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;)V

    invoke-static {p2, p1}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->access$000(Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;Ljava/lang/String;)V

    return-void
.end method

.method public onRestError(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rest Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onRestResponse(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V

    return-void
.end method
