###### Class com.json.h9 (com.ironsource.h9)
.class public final Lcom/ironsource/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/h9$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u0000 E2\u00020\u0001:\u0001\u0005Bg\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010&\u001a\u00020\t\u0012\u0006\u0010>\u001a\u00020\u0011\u0012\u0006\u00105\u001a\u000200\u0012\u0006\u0010/\u001a\u00020\u0018\u0012\u0006\u0010?\u001a\u00020\t\u0012\u0006\u0010@\u001a\u00020\u001e\u0012\u0006\u0010A\u001a\u00020\t\u0012\u0006\u0010B\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008C\u0010DJ\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016R\u001a\u0010\r\u001a\u00020\t8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0010\u001a\u00020\t8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0005\u0010\u0016R\"\u0010\u001d\u001a\u00020\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u000e\u0010\u001b\"\u0004\u0008\u0005\u0010\u001cR\"\u0010#\u001a\u00020\u001e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u0012\u0010!\"\u0004\u0008\u0005\u0010\"R\"\u0010&\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\n\u001a\u0004\u0008\u0005\u0010\u000c\"\u0004\u0008\u0005\u0010%R$\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00020\'j\u0008\u0012\u0004\u0012\u00020\u0002`(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\"\u0010/\u001a\u00020\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u001a\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008\u000e\u0010\u001cR\"\u00105\u001a\u0002008\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u0008\u0019\u00103\"\u0004\u0008\u0005\u00104R\"\u00106\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008\u000e\u0010%R\"\u00107\u001a\u00020\u001e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010 \u001a\u0004\u0008.\u0010!\"\u0004\u0008\u000e\u0010\"R\"\u00109\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\n\u001a\u0004\u00081\u0010\u000c\"\u0004\u0008\u0012\u0010%R\"\u0010;\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\n\u001a\u0004\u00088\u0010\u000c\"\u0004\u0008\u0019\u0010%R\u0013\u0010=\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010<\u00a8\u0006F"
    }
    d2 = {
        "Lcom/ironsource/h9;",
        "",
        "Lcom/ironsource/n9;",
        "placement",
        "",
        "a",
        "",
        "placementName",
        "toString",
        "",
        "Z",
        "l",
        "()Z",
        "mThreadPerManager",
        "b",
        "k",
        "mSharedManagersThread",
        "Lcom/ironsource/m0;",
        "c",
        "Lcom/ironsource/m0;",
        "g",
        "()Lcom/ironsource/m0;",
        "(Lcom/ironsource/m0;)V",
        "eventsConfigurations",
        "",
        "d",
        "I",
        "()I",
        "(I)V",
        "adaptersSmartLoadAmount",
        "",
        "e",
        "J",
        "()J",
        "(J)V",
        "adaptersSmartLoadTimeoutInMills",
        "f",
        "(Z)V",
        "adapterAdvancedLoading",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "mPlacements",
        "h",
        "Lcom/ironsource/n9;",
        "mDefaultPlacement",
        "i",
        "delayLoadFailure",
        "Lcom/ironsource/mediationsdk/utils/a;",
        "j",
        "Lcom/ironsource/mediationsdk/utils/a;",
        "()Lcom/ironsource/mediationsdk/utils/a;",
        "(Lcom/ironsource/mediationsdk/utils/a;)V",
        "auctionSettings",
        "mCollectBiddingDataAsyncEnabled",
        "mCollectBiddingDataTimeout",
        "m",
        "mProvidersParallelInit",
        "n",
        "mWaitUntilAllProvidersFinishInit",
        "()Lcom/ironsource/n9;",
        "defaultPlacement",
        "events",
        "collectBiddingDataAsyncEnabled",
        "collectBiddingDataTimeout",
        "providersParallelInit",
        "waitUntilAllProvidersFinishInit",
        "<init>",
        "(IJZLcom/ironsource/m0;Lcom/ironsource/mediationsdk/utils/a;IZJZZZZ)V",
        "o",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final o:Lcom/ironsource/h9$a;


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Lcom/ironsource/m0;

.field private d:I

.field private e:J

.field private f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/n9;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ironsource/n9;

.field private i:I

.field private j:Lcom/ironsource/mediationsdk/utils/a;

.field private k:Z

.field private l:J

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/h9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/h9$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/ironsource/h9;->o:Lcom/ironsource/h9$a;

    return-void
.end method

.method public constructor <init>(IJZLcom/ironsource/m0;Lcom/ironsource/mediationsdk/utils/a;IZJZZZZ)V
    .registers 16

    const-string v0, "events"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionSettings"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p13, p0, Lcom/ironsource/h9;->a:Z

    iput-boolean p14, p0, Lcom/ironsource/h9;->b:Z

    new-instance p13, Ljava/util/ArrayList;

    invoke-direct {p13}, Ljava/util/ArrayList;-><init>()V

    iput-object p13, p0, Lcom/ironsource/h9;->g:Ljava/util/ArrayList;

    iput p1, p0, Lcom/ironsource/h9;->d:I

    iput-wide p2, p0, Lcom/ironsource/h9;->e:J

    iput-boolean p4, p0, Lcom/ironsource/h9;->f:Z

    iput-object p5, p0, Lcom/ironsource/h9;->c:Lcom/ironsource/m0;

    iput p7, p0, Lcom/ironsource/h9;->i:I

    iput-object p6, p0, Lcom/ironsource/h9;->j:Lcom/ironsource/mediationsdk/utils/a;

    iput-boolean p8, p0, Lcom/ironsource/h9;->k:Z

    iput-wide p9, p0, Lcom/ironsource/h9;->l:J

    iput-boolean p11, p0, Lcom/ironsource/h9;->m:Z

    iput-boolean p12, p0, Lcom/ironsource/h9;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/n9;
    .registers 5

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/h9;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/n9;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/ironsource/h9;->d:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/ironsource/h9;->e:J

    return-void
.end method

.method public final a(Lcom/ironsource/m0;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/h9;->c:Lcom/ironsource/m0;

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/utils/a;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/h9;->j:Lcom/ironsource/mediationsdk/utils/a;

    return-void
.end method

.method public final a(Lcom/ironsource/n9;)V
    .registers 3

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/ironsource/h9;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/h9;->h:Lcom/ironsource/n9;

    if-nez v0, :cond_c

    goto :goto_12

    :cond_c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_14

    :goto_12
    iput-object p1, p0, Lcom/ironsource/h9;->h:Lcom/ironsource/n9;

    :cond_14
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/h9;->f:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->f:Z

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/ironsource/h9;->d:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/ironsource/h9;->i:I

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/ironsource/h9;->l:J

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/h9;->k:Z

    return-void
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/h9;->e:J

    return-wide v0
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/h9;->m:Z

    return-void
.end method

.method public final d()Lcom/ironsource/mediationsdk/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/h9;->j:Lcom/ironsource/mediationsdk/utils/a;

    return-object v0
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/h9;->n:Z

    return-void
.end method

.method public final e()Lcom/ironsource/n9;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/h9;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/n9;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/ironsource/h9;->h:Lcom/ironsource/n9;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/ironsource/h9;->i:I

    return v0
.end method

.method public final g()Lcom/ironsource/m0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/h9;->c:Lcom/ironsource/m0;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->k:Z

    return v0
.end method

.method public final i()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/h9;->l:J

    return-wide v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->m:Z

    return v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->b:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->a:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/h9;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAdConfigurations{parallelLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/h9;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/h9;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
