###### Class io.didomi.drawable.C1806k.a (io.didomi.sdk.k$a)
.class public final Lio/didomi/sdk/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$a$a;,
        Lio/didomi/sdk/k$a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008 \u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u001f\"B\u0099\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010 \u001a\u0004\u0008#\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008$\u0010*R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010)\u001a\u0004\u0008,\u0010*R\u001a\u0010\u000b\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008\u001f\u0010/R\u001a\u0010\u000c\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010.\u001a\u0004\u0008+\u0010/R\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u0010 \u001a\u0004\u00080\u0010\u0018R\u001a\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u00101\u001a\u0004\u00082\u00103R\"\u0010\u0010\u001a\u00020\u00028\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010 \u001a\u0004\u0008\"\u0010\u0018\"\u0004\u00085\u00106R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010 \u001a\u0004\u0008-\u0010\u0018R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00082\u00107\u001a\u0004\u0008(\u00108R\u001a\u0010\u0014\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u00101\u001a\u0004\u00084\u00103\u00a8\u00069"
    }
    d2 = {
        "Lio/didomi/sdk/k$a;",
        "",
        "",
        "name",
        "privacyPolicyURL",
        "Lio/didomi/sdk/k$a$b;",
        "vendors",
        "",
        "Lio/didomi/sdk/CustomPurpose;",
        "customPurposes",
        "essentialPurposes",
        "consentDuration",
        "deniedConsentDuration",
        "logoUrl",
        "",
        "shouldHideDidomiLogo",
        "country",
        "deploymentId",
        "Lio/didomi/sdk/k$a$a;",
        "dcsConfig",
        "ouidAsPrimaryIfPresent",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;Z)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "i",
        "b",
        "k",
        "c",
        "Lio/didomi/sdk/k$a$b;",
        "m",
        "()Lio/didomi/sdk/k$a$b;",
        "d",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "e",
        "g",
        "f",
        "Ljava/lang/Object;",
        "()Ljava/lang/Object;",
        "h",
        "Z",
        "l",
        "()Z",
        "j",
        "setCountry$android_release",
        "(Ljava/lang/String;)V",
        "Lio/didomi/sdk/k$a$a;",
        "()Lio/didomi/sdk/k$a$a;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "name"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "privacyPolicyURL"
    .end annotation
.end field

.field private final c:Lio/didomi/sdk/k$a$b;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "customPurposes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/CustomPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "essentialPurposes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consentDuration"
    .end annotation
.end field

.field private final g:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/r/c;
        value = "deniedConsentDuration"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "logoUrl"
    .end annotation
.end field

.field private final i:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "shouldHideDidomiLogo"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "country"
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "deploymentId"
    .end annotation
.end field

.field private final l:Lio/didomi/sdk/k$a$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consentString"
    .end annotation
.end field

.field private final m:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "ouidAsPrimaryIfPresent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lio/didomi/sdk/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;ZILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/k$a$b;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/CustomPurpose;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/k$a$a;",
            "Z)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyPolicyURL"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customPurposes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "essentialPurposes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentDuration"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedConsentDuration"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    iput-object p4, p0, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    iput-object p5, p0, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    iput-object p6, p0, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    iput-object p7, p0, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    iput-object p8, p0, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    iput-boolean p9, p0, Lio/didomi/sdk/k$a;->i:Z

    iput-object p10, p0, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    iput-object p11, p0, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    iput-object p12, p0, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    iput-boolean p13, p0, Lio/didomi/sdk/k$a;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;ZILkotlin/jvm/internal/n;)V
    .registers 31

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    :goto_c
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_12

    move-object v3, v2

    goto :goto_14

    :cond_12
    move-object/from16 v3, p2

    :goto_14
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_26

    new-instance v4, Lio/didomi/sdk/k$a$b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lio/didomi/sdk/k$a$b;-><init>(Lio/didomi/sdk/k$a$b$a;Ljava/util/Set;Lio/didomi/sdk/models/GoogleConfig;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_28

    :cond_26
    move-object/from16 v4, p3

    :goto_28
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_31

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_33

    :cond_31
    move-object/from16 v5, p4

    :goto_33
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3c

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_3e

    :cond_3c
    move-object/from16 v6, p5

    :goto_3e
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4a

    const-wide/32 v7, 0x1e28500

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4c

    :cond_4a
    move-object/from16 v7, p6

    :goto_4c
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_57

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_59

    :cond_57
    move-object/from16 v8, p7

    :goto_59
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_5e

    goto :goto_60

    :cond_5e
    move-object/from16 v2, p8

    :goto_60
    and-int/lit16 v9, v0, 0x100

    const/4 v10, 0x0

    if-eqz v9, :cond_67

    const/4 v9, 0x0

    goto :goto_69

    :cond_67
    move/from16 v9, p9

    :goto_69
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_70

    const-string v11, "AA"

    goto :goto_72

    :cond_70
    move-object/from16 v11, p10

    :goto_72
    and-int/lit16 v12, v0, 0x400

    const/4 v13, 0x0

    if-eqz v12, :cond_79

    move-object v12, v13

    goto :goto_7b

    :cond_79
    move-object/from16 v12, p11

    :goto_7b
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_80

    goto :goto_82

    :cond_80
    move-object/from16 v13, p12

    :goto_82
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_87

    goto :goto_89

    :cond_87
    move/from16 v10, p13

    :goto_89
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v2

    move/from16 p10, v9

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move/from16 p14, v10

    invoke-direct/range {p1 .. p14}, Lio/didomi/sdk/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/CustomPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/k$a$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/k$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/k$a;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->i:Z

    iget-boolean v3, p1, Lio/didomi/sdk/k$a;->i:Z

    if-eq v1, v3, :cond_6b

    return v2

    :cond_6b
    iget-object v1, p0, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v2

    :cond_76
    iget-object v1, p0, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    return v2

    :cond_81
    iget-object v1, p0, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    iget-object v3, p1, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    return v2

    :cond_8c
    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->m:Z

    iget-boolean p1, p1, Lio/didomi/sdk/k$a;->m:Z

    if-eq v1, p1, :cond_93

    return v2

    :cond_93
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    invoke-virtual {v1}, Lio/didomi/sdk/k$a$b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_60

    const/4 v1, 0x0

    goto :goto_64

    :cond_60
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_64
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    if-nez v1, :cond_6c

    goto :goto_70

    :cond_6c
    invoke-virtual {v1}, Lio/didomi/sdk/k$a$a;->hashCode()I

    move-result v3

    :goto_70
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->m:Z

    if-eqz v1, :cond_78

    goto :goto_79

    :cond_78
    move v2, v1

    :goto_79
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k$a;->m:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k$a;->i:Z

    return v0
.end method

.method public final m()Lio/didomi/sdk/k$a$b;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyPolicyURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->c:Lio/didomi/sdk/k$a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", essentialPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consentDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deniedConsentDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldHideDidomiLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deploymentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dcsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a;->l:Lio/didomi/sdk/k$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ouidAsPrimaryIfPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k$a;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
