# alithis

![logo](logo.png)

**Short description**

Alithis brings traceability to machine learning models, using the power of filecoin it maps datasets and models resulting in a
comprehensive relation of the datatransformations and modeling. It stores such data in a persistent manner by minting an NFT of the dataset and models.

**Long description**

There is uncertainty nowadays of the origin of data in top of the line machine learning models used in the industry, as a clear example there have been discussions if the diffusion models are 'stealing' from artists.

What if we would like to know where such data was taken from for machine learning models?

Alithis proposes a way of clarifying the black box on AI models by bringing data and model traceability. And how is this done?

It mints an NFT for the dataset and stores a SHA256 hash of each data point. This way we can have a persistent relation of the data and a unique identifier of the data in it (by the SHA256 data), this could also provide privacy for dataset that holds personal or private data, because it does not disclose the data but a transformation that only corresponds to such data point.

When creating a machine learning model, there is lots of metadata and hyper parameters related to fine tuning and optimization that helps it work in the best manner, this information is also minted along with the dataset in an NFT so we can have a way to relate the data to the model.

Alithis is a proof of concept for AI model traceability, it allows to verify the data origin for machine learning models.
