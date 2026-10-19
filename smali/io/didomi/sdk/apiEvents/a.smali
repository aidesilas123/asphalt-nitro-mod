###### Class io.didomi.drawable.apiEvents.a (io.didomi.sdk.apiEvents.a)
.class public final Lio/didomi/sdk/apiEvents/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/apiEvents/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B9\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J7\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00162\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0014\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/a;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/P3;",
        "organizationUserRepository",
        "Lio/didomi/sdk/F8;",
        "userAgentRepository",
        "Lio/didomi/sdk/M8;",
        "userRepository",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)V",
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;",
        "parameters",
        "",
        "Lio/didomi/sdk/e;",
        "a",
        "(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;)Ljava/util/List;",
        "Lio/didomi/sdk/apiEvents/ApiEventType;",
        "eventType",
        "Lio/didomi/sdk/i;",
        "Lio/didomi/sdk/user/UserAuth;",
        "organizationUserOverride",
        "",
        "includeUserId",
        "(Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;Z)Lio/didomi/sdk/e;",
        "Lio/didomi/sdk/H;",
        "b",
        "Lio/didomi/sdk/V;",
        "c",
        "Lio/didomi/sdk/P3;",
        "d",
        "Lio/didomi/sdk/F8;",
        "e",
        "Lio/didomi/sdk/M8;",
        "f",
        "Lio/didomi/sdk/Z;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private final b:Lio/didomi/sdk/V;

.field private final c:Lio/didomi/sdk/P3;

.field private final d:Lio/didomi/sdk/F8;

.field private final e:Lio/didomi/sdk/M8;

.field private final f:Lio/didomi/sdk/Z;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)V
    .registers 8

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "organizationUserRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    iput-object p3, p0, Lio/didomi/sdk/apiEvents/a;->c:Lio/didomi/sdk/P3;

    iput-object p4, p0, Lio/didomi/sdk/apiEvents/a;->d:Lio/didomi/sdk/F8;

    iput-object p5, p0, Lio/didomi/sdk/apiEvents/a;->e:Lio/didomi/sdk/M8;

    iput-object p6, p0, Lio/didomi/sdk/apiEvents/a;->f:Lio/didomi/sdk/Z;

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x1

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;Z)Lio/didomi/sdk/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;Z)Lio/didomi/sdk/e;
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "eventType"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_14

    iget-object v2, v0, Lio/didomi/sdk/apiEvents/a;->c:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    goto :goto_16

    :cond_14
    move-object/from16 v2, p3

    :goto_16
    new-instance v16, Lio/didomi/sdk/apiEvents/Token;

    const/16 v21, 0x0

    if-eqz p4, :cond_24

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->e:Lio/didomi/sdk/M8;

    invoke-virtual {v4}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_26

    :cond_24
    move-object/from16 v5, v21

    :goto_26
    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->e:Lio/didomi/sdk/M8;

    invoke-virtual {v4}, Lio/didomi/sdk/M8;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    iget-object v7, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v7}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/consent/model/ConsentToken;->getCreated()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v8}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v8

    invoke-virtual {v8}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-static {v4}, Lio/didomi/sdk/Y;->h(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    iget-object v9, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v9}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v9

    invoke-static {v9}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v11, Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-static {v4}, Lio/didomi/sdk/Y;->f(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    iget-object v9, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v9}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v9

    invoke-static {v9}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v12, Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-static {v4}, Lio/didomi/sdk/Y;->i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    iget-object v9, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v9}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v9

    invoke-static {v9}, Lio/didomi/sdk/Y;->e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v12, v4, v9}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v13, Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-static {v4}, Lio/didomi/sdk/Y;->g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    iget-object v9, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v9}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v9

    invoke-static {v9}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v13, v4, v9}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v9, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x0

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v15}, Lio/didomi/sdk/apiEvents/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;ILkotlin/jvm/internal/n;)V

    if-eqz p4, :cond_c1

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->e:Lio/didomi/sdk/M8;

    invoke-virtual {v4}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_c3

    :cond_c1
    move-object/from16 v5, v21

    :goto_c3
    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->e:Lio/didomi/sdk/M8;

    invoke-virtual {v4}, Lio/didomi/sdk/M8;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    invoke-virtual {v4}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/k;->l()Lio/didomi/sdk/k$k;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/k$k;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->d:Lio/didomi/sdk/F8;

    invoke-virtual {v4}, Lio/didomi/sdk/F8;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_e5

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_e7

    :cond_e5
    move-object/from16 v10, v21

    :goto_e7
    instance-of v4, v2, Lio/didomi/sdk/user/UserAuthParams;

    if-eqz v4, :cond_ef

    move-object v9, v2

    check-cast v9, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_f1

    :cond_ef
    move-object/from16 v9, v21

    :goto_f1
    if-eqz v9, :cond_f9

    invoke-interface {v9}, Lio/didomi/sdk/user/UserAuthParams;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    goto :goto_fb

    :cond_f9
    move-object/from16 v11, v21

    :goto_fb
    if-eqz v4, :cond_101

    move-object v9, v2

    check-cast v9, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_103

    :cond_101
    move-object/from16 v9, v21

    :goto_103
    if-eqz v9, :cond_10b

    invoke-interface {v9}, Lio/didomi/sdk/user/UserAuthParams;->getSecretId()Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    goto :goto_10d

    :cond_10b
    move-object/from16 v12, v21

    :goto_10d
    if-eqz v4, :cond_113

    move-object v4, v2

    check-cast v4, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_115

    :cond_113
    move-object/from16 v4, v21

    :goto_115
    if-eqz v4, :cond_11d

    invoke-interface {v4}, Lio/didomi/sdk/user/UserAuthParams;->getExpiration()Ljava/lang/Long;

    move-result-object v4

    move-object v15, v4

    goto :goto_11f

    :cond_11d
    move-object/from16 v15, v21

    :goto_11f
    instance-of v4, v2, Lio/didomi/sdk/user/UserAuthWithHashParams;

    if-eqz v4, :cond_127

    move-object v9, v2

    check-cast v9, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_129

    :cond_127
    move-object/from16 v9, v21

    :goto_129
    if-eqz v9, :cond_131

    invoke-virtual {v9}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getSalt()Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    goto :goto_133

    :cond_131
    move-object/from16 v13, v21

    :goto_133
    if-eqz v4, :cond_139

    move-object v4, v2

    check-cast v4, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_13b

    :cond_139
    move-object/from16 v4, v21

    :goto_13b
    if-eqz v4, :cond_143

    invoke-virtual {v4}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getDigest()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_145

    :cond_143
    move-object/from16 v14, v21

    :goto_145
    instance-of v4, v2, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    if-eqz v4, :cond_14c

    check-cast v2, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    goto :goto_14e

    :cond_14c
    move-object/from16 v2, v21

    :goto_14e
    if-eqz v2, :cond_155

    invoke-virtual {v2}, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;->getInitializationVector()Ljava/lang/String;

    move-result-object v2

    goto :goto_157

    :cond_155
    move-object/from16 v2, v21

    :goto_157
    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->g()Ljava/lang/Integer;

    move-result-object v18

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->b:Lio/didomi/sdk/V;

    invoke-virtual {v4}, Lio/didomi/sdk/V;->d()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    invoke-virtual {v4}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/h0;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v20

    new-instance v26, Lio/didomi/sdk/apiEvents/User;

    move-object/from16 v4, v26

    move-object/from16 v9, v16

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v20}, Lio/didomi/sdk/apiEvents/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/apiEvents/Token;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Set;)V

    new-instance v2, Lio/didomi/sdk/apiEvents/Source;

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->f:Lio/didomi/sdk/Z;

    invoke-virtual {v4}, Lio/didomi/sdk/Z;->d()Ljava/lang/String;

    move-result-object v28

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    invoke-virtual {v4}, Lio/didomi/sdk/H;->a()Ljava/lang/String;

    move-result-object v29

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->f:Lio/didomi/sdk/Z;

    invoke-virtual {v4}, Lio/didomi/sdk/Z;->b()Ljava/lang/String;

    move-result-object v30

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->f:Lio/didomi/sdk/Z;

    invoke-virtual {v4}, Lio/didomi/sdk/Z;->f()Ljava/lang/String;

    move-result-object v31

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    invoke-virtual {v4}, Lio/didomi/sdk/H;->c()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v32}, Lio/didomi/sdk/apiEvents/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lio/didomi/sdk/apiEvents/a$a;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_2aa

    new-instance v1, Lkotlin/k;

    invoke-direct {v1}, Lkotlin/k;-><init>()V

    throw v1

    :pswitch_1b8
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionSensitivePersonalInfoChangedApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionSensitivePersonalInfoChangedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_2a9

    :pswitch_1cf
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionVendorChangedApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionVendorChangedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_2a9

    :pswitch_1e6
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionPurposeChangedApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionPurposeChangedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_2a9

    :pswitch_1fd
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionShownPersonalDataTypesApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionShownPersonalDataTypesApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_2a9

    :pswitch_214
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionShownVendorsApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionShownVendorsApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_2a9

    :pswitch_22b
    new-instance v1, Lio/didomi/sdk/apiEvents/UIActionShownPurposesApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/UIActionShownPurposesApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto :goto_2a9

    :pswitch_241
    new-instance v1, Lio/didomi/sdk/apiEvents/SyncAcknowledgedApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/SyncAcknowledgedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/i;ILkotlin/jvm/internal/n;)V

    goto :goto_2a9

    :pswitch_257
    new-instance v3, Lio/didomi/sdk/apiEvents/ConsentGivenApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    instance-of v4, v1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    if-eqz v4, :cond_267

    move-object/from16 v21, v1

    check-cast v21, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    :cond_267
    move-object/from16 v28, v21

    const/16 v29, 0x7

    const/16 v30, 0x0

    move-object/from16 v22, v3

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;ILkotlin/jvm/internal/n;)V

    goto :goto_292

    :pswitch_275
    new-instance v3, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    instance-of v4, v1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    if-eqz v4, :cond_285

    move-object/from16 v21, v1

    check-cast v21, Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    :cond_285
    move-object/from16 v28, v21

    const/16 v29, 0x7

    const/16 v30, 0x0

    move-object/from16 v22, v3

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;ILkotlin/jvm/internal/n;)V

    :goto_292
    move-object v1, v3

    goto :goto_2a9

    :pswitch_294
    new-instance v1, Lio/didomi/sdk/apiEvents/PageViewApiEvent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x27

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    invoke-direct/range {v22 .. v30}, Lio/didomi/sdk/apiEvents/PageViewApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/i;ILkotlin/jvm/internal/n;)V

    :goto_2a9
    return-object v1

    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_294
        :pswitch_275
        :pswitch_257
        :pswitch_241
        :pswitch_22b
        :pswitch_214
        :pswitch_1fd
        :pswitch_1e6
        :pswitch_1cf
        :pswitch_1b8
    .end packed-switch
.end method

.method public final a(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "parameters"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_GIVEN:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lio/didomi/sdk/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/p;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v7, Lio/didomi/sdk/apiEvents/a;->c:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/user/UserAuth;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v18, 0xff

    const/16 v19, 0x0

    const-string v17, "multiple-IDs"

    move-object/from16 v8, p1

    move-object v15, v4

    invoke-static/range {v8 .. v19}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->copy$default(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    move-result-object v4

    sget-object v5, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_GIVEN:Lio/didomi/sdk/apiEvents/ApiEventType;

    iget-object v6, v7, Lio/didomi/sdk/apiEvents/a;->a:Lio/didomi/sdk/H;

    invoke-virtual {v6}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/k$a;->j()Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v7, v5, v4, v3, v6}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;Z)Lio/didomi/sdk/e;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p1

    goto :goto_2e

    :cond_6b
    return-object v0
.end method
