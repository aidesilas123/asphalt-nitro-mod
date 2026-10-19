###### Class com.gameloft.GLSocialLib.GameAPI.AchievementManager.AnonymousClass3 (com.gameloft.GLSocialLib.GameAPI.AchievementManager$3)
.class Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;
.super Ljava/lang/Object;
.source "AchievementManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->revealAchievement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;->onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->access$000(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;I)V

    return-void
.end method
