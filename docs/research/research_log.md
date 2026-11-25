RESEARCH LOG — PHASE 0

======================



Project: MotoFuel Tracker (Urban Mobility)

Student: Ishimwe Gad 
id: 29062

Date: November 2026





1\. SOURCE MATRIX

==================



No. 1

Source (APA): Nkurunziza, A., et al. (2022). Motorcycle Taxi Industry in Kigali: Economic Impact Study. University of Rwanda Press.

Type: Academic Paper

Link: https://scholar.google.com

Key Finding: Commercial motorcycle taxis account for roughly 15% of urban transit activity across Kigali.

Identified Gap: Operators rely on cash and memory rather than structured digital tools to monitor daily operations.



No. 2

Source (APA): Habimana, J. (2023). Financial Inclusion for Informal Workers. African Journal of Finance, 12(3), 45-60.

Type: Academic Paper

Link: https://www.researchgate.net

Key Finding: Workers in the informal economy lose approximately 20% of potential net income due to unrecorded daily operating costs.

Identified Gap: There is a lack of accessible expense-tracking software tailored to informal transport operators.



No. 3

Source (APA): National Institute of Statistics of Rwanda (NISR). (2024). Rwanda Transport Statistics Report.

Type: Government Report

Link: https://www.statistics.gov.rw

Key Finding: More than 30,000 commercial motorcycles operate within Kigali.

Identified Gap: Published statistics remain macro-level and aggregated, offering no individualized financial tracking at the driver level.



No. 4

Source (APA): YegoMoto. (2023). Mobile ride-hailing platform for motorcycles in Rwanda.

Type: Existing Commercial Platform

Link: https://yegomoto.com

Key Finding: Streamlines passenger booking, GPS dispatch, and digital fare metering.

Identified Gap: Focuses exclusively on rider dispatch and fare collection without providing driver-side expense logging or net profit analytics.



No. 5

Source (APA): Kaggle. (2023). NYC Yellow Taxi Trip Data.

Type: Open Dataset

Link: https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data

Key Finding: Contains over one million structured trip records detailing distances, timestamps, and fare amounts.

Identified Gap: Granular, trip-level Rwandan motorcycle taxi datasets are not publicly available for academic modeling.



No. 6

Source (APA): Oracle. (2024). PL/SQL Language Reference 21c.

Type: Technical Documentation

Link: https://docs.oracle.com/en/database/

Key Finding: Outlines native database capabilities for stored procedures, functions, triggers, auditing, and modular packages.

Identified Gap: Not applicable (serves as the core architectural reference for building the database solution).





2\. SUMMARY OF RESEARCH GAPS

\---------------------------



1\. Lack of Driver-Level Financial Visibility

Motorcycle taxi operators work on narrow daily profit margins. Existing mobility platforms such as YegoMoto prioritize passenger dispatch and fare collection, leaving drivers without a mechanism to deduct fuel and maintenance expenses to see their true net income.



2\. Absence of Individualized Operational Records

While national agencies like NISR capture macro-level fleet registration numbers, no database-driven tool enables individual riders or local cooperatives to log and evaluate day-to-day financial performance.



3\. Project Justification

By adapting structured trip volume data from Kaggle with localized Rwandan cost benchmarks inside an Oracle PL/SQL backend, MotoFuel Tracker bridges this gap—automating daily profit calculations and alerting drivers to consecutive loss-making days.












## Phase I – Business Process Modeling

Selected Process: MotoFuel Tracker – Daily Ride, Fuel, and Profit Tracking
Modeling Tool Used: diagrams.net (Draw.io)
Published Diagram Link:** [Click here to view the live diagram](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&dark=auto#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22aIBdbA-zt5QfniJ5zQZd%22%3E7Vxbc%2BI2FP41zLQPMLbli3jcXHabmXQm2cx020cFK%2BCusagsQthfXwlkbEsGbGMZaPdl1z7W9ZzznZtEBuB2%2FvGFosXsdxLieOBY4ccA3A0cxx7DMf9PUNaSAoG1pUxpFEpaTniJfmBJzJotoxCnpYaMkJhFizJxQpIET1iJhiglq3KzNxKXZ12gKdYILxMU69RvUchmWyp0gpz%2BG46ms2xm25c7nqOssdxJOkMhWRVI4H4AbikhbPs0%2F7jFseBexpdtv897vu4WRnHC6nRwf3x%2Bvx%2F%2B%2BGO4%2FueZPH6FX5%2B%2FPAzlNnCocSEfVpJSsqQTfGAsR7Zj64x5YtgX%2BUoom5EpSVB8n1NvKFkmIRYrtPhb3uaRkAUn2pz4N2ZsLRUDLRnhpBmbx%2FJriN%2FQMmaP6BXHN2jyfboZ8ZbEhPIWW%2BnexOLrEwrDKJlupnIsl5OlOiE6xezAvtxtu3cUL%2BW%2BdtLjeo%2FJHDO65g0ojhGL3suMRFL%2Fprt2uYj4g5RSA4k5%2BwVUYHwcc4CIra9mEcMvC7SR3IqDtMw%2BrpQL%2FJCkHGSSom025Qxikoopwx%2BFSXUmzApgcJ2Rt%2B24yqHjSzjIYcbyVdoHxx85niHOuXU4lyukfZx7svETphFfIqb7WEjxhNBQqIjgcxtWAp2RtlPmpAPKrMxeO%2Bejd34%2Bvi2FnzHDR9fviY%2Bwge0tQDsJPwm%2Fxt8mMUrTaFLJS2lRTzGPfKbPUZyNy5dE13%2FKYTcvfxW%2F3H0UP92t5VtNE%2BvVNLFFUXpSLpVmtyBfryxea2RZLtgv0s2knMNoXWiwIFHC0sKangShoDNWWWd8MHJ9RUG2Y1b3B57SX7GBW98rOxV9vLoOdRxFd7eC0MbZqO%2BOze01elzLMszI%2FHWZduKbWtkAaOk2QPFKrlvmoz02ZQRs58KtQH%2FIHFojp2Nc%2BoocM2NeD5W%2BVd27MSy1ZajqZBiXNjiby04Rl7%2FI2UQS%2BDpw%2FJgJhYze%2BeNUPE4oRgxnH%2Fj2Ct9awduvgLfi4j016jQHb%2FcnvHN4H8iJWsEbqHJsBG%2FVyLeGt7YM2DO8%2FbPB%2BzUmk%2B9Cv5MMLQbg6ozdw%2FztDq5N6iHnj8n79c0QtA%2Bb92LHc8rYCVpiUB1Hi9hMY7Be7GsCgxMUT5ZcmlRMT8kb%2B%2BXXCj9L%2BQYj%2FN6zp1VDKBdAQ9DNJr5Y6PYKVmh5QcfO1lfrItBr4Gy13mpqWjuWVgbaefGegJ4lnYfVisOIlRWpCuwpo%2BQ7ztQnIYlQnzdu3xUSiqNpIjSUzyjswI0AasRx%2F0l%2BmEdhWFFP11QuIa2ADnSgKwmzGlGbS5idWrnMhfJ%2FjVNDAgBBbwKoF22eu8pT5Zzsw87Jg6aOHpxLr%2FX255x4FugFXdd5AsUp%2BHbJNx1v7zZJHAO7erbGvkxbhhr9mvZl5wtal4twU%2Fax0uV8jlrmjjVOc%2FzxERZ3hvHMRl%2BlYzIWGASqjTXml4B94TY2P0EbecUztPzU7KQzNOBoUjVmxEU5IHC6zjA81ztkxRtW61tbZe%2FMVjkT5DlKCbIYb6EYt7z0UWWTlbjL7c8mg1NtgjS0Vx90QRAcqLy0C7qUlCPwlAtoKq6UsCloFnSps9mK0tSGt7oMS7ETpuG9uzp4hXGCuQTWU05jPGNFfjC%2B8EChB7uw1wjobhVUo7x54U4ZCKoANoy7TL%2FO4FbJAidiZrLibRzr5oH%2FE6J0VnUebqBOXyNN8oIjwunuFmYtsBm6Pvge4dUGJUnY0o7prBwrnFSCG2jMjrknBzf%2FZzsG3ZbpgTZQz6f9bq17zF3eAOca0xVYgjJYfCUWG6unQt2BxfsJlgZgUYKxcdtcWhuo5xup8hbu5YrdcFEoO6y5FL3yyhUedwxb6pUykJYtmNarky8KycxMhIG7OOdaDUteFQxg0PUlP5hdypKiHvqHywxQuQNv2%2BBwh6GtdmhUmFC7D9smSNpAfdvKkw8pr7xYVt%2BOQU1j7BGEjusHEFjioZ0GwCOaZFoBTi6MHDFqgv6EGE%2FRkg3FscCuiJX9utb572qNZmislpYCqpcd1YEMK0q29assYc7J9scIlMuWDlrlNUeLmZopVy%2BpdfdjzJNPPX9i9iBmy3FmoMaZtSGrRCXaQKYhe83X5p4e%2BZ5fnh8ryqXpOmV43mWxdD%2B4911d7Q7MtUo7FyqkOUo4rDu3qFmVrcW9Ef6a%2F3mNLZDyv1IC7v8F%3C%2Fdiagram%3E%3C%2Fmxfile%3E)
Supporting Explanation:** [Click here to view the PDF](docs/business_process/business_process_explanation.pdf)