---  
title: Technical Stack
---

At a friend’s request¹, here is a summary of this blog’s technical stack.

This blog is hosted on GitHub Pages. Jekyll transforms Markdown files into a static website. An AWS CloudFront distribution provides HTTPS support as, unaffected by DNS record edits², GitHub Pages will not serve content over HTTPS³.

As I edit Markdown files in Ulysses, Dropbox notifies an AWS API Gateway. A chain of AWS Lambda functions syncs updates from Dropbox to the GitHub Pages repository⁴. The required resources are described by an AWS CloudFormation template, in spite of limitations⁵.

---

¹ One who has grown tired of receiving status updates every time I surmount a technical hurdle

² Using a `CNAME` record instead of an `A` record, adding Let’s Encrypt to the `CAA` record, etc.

³ “Unavailable for your site because your domain is not properly configured to support HTTPS”

⁴ [smockle/dropblog][1]

⁵ For example:
* External Swagger files don’t support stage variables or pseudo parameters: [awslabs/serverless-application-model#345][2]
* S3-Lambda permissions and policies that reference S3 bucket names are mutually-exclusive, [unable-validate-circular-dependency-cloudformation][3] notwithstanding
* Neither `Fn::GetAtt` nor `Ref` return ARNs for all resources

[1]:	https://github.com/smockle/dropblog
[2]:	https://github.com/awslabs/serverless-application-model/issues/345
[3]:	https://aws.amazon.com/premiumsupport/knowledge-center/unable-validate-circular-dependency-cloudformation/